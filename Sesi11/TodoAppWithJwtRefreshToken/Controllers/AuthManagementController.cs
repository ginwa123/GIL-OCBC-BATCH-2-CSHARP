using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using TodoAppWithJwtRefreshToken.Configuration;
using TodoAppWithJwtRefreshToken.Data;
using TodoAppWithJwtRefreshToken.Models;
using TodoAppWithJwtRefreshToken.Models.Requests;
using TodoAppWithJwtRefreshToken.Models.Responses;

namespace TodoAppWithJwtRefreshToken.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthManagementController : ControllerBase
    {
        private UserManager<IdentityUser> userManager;
        private JwtConfig jwtConfig;
        private TokenValidationParameters tokenValidationParams;
        private ApiDbContext apiDbContext;

        public AuthManagementController(
            UserManager<IdentityUser> userManager,
            IOptionsMonitor<JwtConfig> optionsMonitor,
            TokenValidationParameters tokenValidationParameters,
            ApiDbContext apiDbContext)
        {
            this.userManager = userManager;
            this.jwtConfig = optionsMonitor.CurrentValue;
            this.tokenValidationParams = tokenValidationParameters;
            this.apiDbContext = apiDbContext;

        }

        private async Task<AuthResult> GenerateJwtToken(IdentityUser user)
        {
            var jwtTokenHandler = new JwtSecurityTokenHandler();
            var key = Encoding.ASCII.GetBytes(jwtConfig.Secret);
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[]
                {
                    new Claim("Id", user.Id),
                    new Claim(JwtRegisteredClaimNames.Email, user.Email),
                    new Claim(JwtRegisteredClaimNames.Sub, user.Email),
                    new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
                }),
                Expires = DateTime.UtcNow.AddSeconds(120),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)

            };
            var token = jwtTokenHandler.CreateToken(tokenDescriptor);
            var jwtToken = jwtTokenHandler.WriteToken(token);

            var refreshToken = new RefreshToken()
            {
                JwtId = token.Id,
                IsUsed = false,
                IsRevoked = false,
                UserId = user.Id,
                AddedDate = DateTime.UtcNow,
                ExpiryDate = DateTime.UtcNow.AddMonths(6),
                Token = RandomString(35) + Guid.NewGuid()
            };

            await apiDbContext.RefreshTokens.AddAsync(refreshToken);
            await apiDbContext.SaveChangesAsync();
            return new AuthResult()
            {
                Token = jwtToken,
                Success = true,
                RefreshToken = refreshToken.Token
            };
        }

        [HttpPost]
        [Route("RefreshToken")]
        public async Task<IActionResult> RefreshToken([FromBody] TokenRequest tokenRequest)
        {
            if (ModelState.IsValid)
            {
                var result = await VerifyAndGenerateToken(tokenRequest);
                if (result == null)
                {
                    return BadRequest(new RegistrationResponse()
                    {
                        Errors = new List<string>()
                        {
                            "Invalid tokens"
                        },
                        Success = false
                    });
                }
                return Ok(result);
            }
            return BadRequest(new RegistrationResponse()
            {
                Errors = new List<string>()
                {
                    "Invalid payload"
                },
                Success = false
            });
        }



        private async Task<AuthResult> VerifyAndGenerateToken(TokenRequest tokenRequest)
        {
            var jwtTokenHandler = new JwtSecurityTokenHandler();

            try
            {
                // bug fix
                tokenValidationParams.ValidateLifetime = false;
                var tokenInverification = jwtTokenHandler.ValidateToken(tokenRequest.Token, tokenValidationParams, out var validatedToken);
                // bug fix
                tokenValidationParams.ValidateLifetime = true;

                if (validatedToken is JwtSecurityToken jwtSecurityToken)
                {
                    var result = jwtSecurityToken.Header.Alg.Equals(SecurityAlgorithms.HmacSha256, StringComparison.InvariantCultureIgnoreCase);
                    if (result == false) return null;
                }


                var utcExpiryDate = long.Parse(tokenInverification.Claims.FirstOrDefault(x => x.Type == JwtRegisteredClaimNames.Exp).Value);
                var expiryDate = UnixTimeStampToDateTime(utcExpiryDate);
                if (expiryDate > DateTime.UtcNow)
                {
                    return new AuthResult()
                    {
                        Success = false,
                        Errors = new List<string>()
                        {
                            "Token has not yet expired"
                        }
                    };
                }

                var storedToken = await apiDbContext.RefreshTokens.FirstOrDefaultAsync(x => x.Token == tokenRequest.RefreshToken);
                if (storedToken == null)
                {
                    return new AuthResult()
                    {
                        Success = false,
                        Errors = new List<string>()
                        {
                            "Token does not exist"
                        }
                    };
                }

                if (storedToken.IsUsed)
                {
                    return new AuthResult()
                    {
                        Success = false,
                        Errors = new List<string>()
                        {
                            "Token has been used"
                        }
                    };
                }

                if (storedToken.IsRevoked)
                {
                    return new AuthResult()
                    {
                        Success = false,
                        Errors = new List<string>()
                        {
                            "Token has not been revoked"
                        }
                    };
                }

                var jti = tokenInverification.Claims.FirstOrDefault(x => x.Type == JwtRegisteredClaimNames.Jti).Value;

                if (storedToken.JwtId != jti)
                {
                    return new AuthResult()
                    {
                        Success = false,
                        Errors = new List<string>()
                        {
                            "Token Doesn't match"
                        }
                    };
                }

                storedToken.IsUsed = true;
                apiDbContext.RefreshTokens.Update(storedToken);
                await apiDbContext.SaveChangesAsync();

                var dbUser = await userManager.FindByIdAsync(storedToken.UserId);
                return await GenerateJwtToken(dbUser);
            }
            catch (Exception e)
            {


                if (e.Message.Contains("Lifetime validation failed. The token is expired"))
                {

                    return new AuthResult()
                    {
                        Success = false,
                        Errors = new List<string>()
                        {
                            "Token has expired please re-login"
                        }
                    };
                }
                return new AuthResult()
                {
                    Success = false,
                    Errors = new List<string>()
                    {
                        "Something went wrong"
                    }
                };

            }
        }

        private static DateTime UnixTimeStampToDateTime(long unixTimeStampt)
        {
            var dateTimeVal = new DateTime(1970, 1, 1, 0, 0, 0, 0, DateTimeKind.Utc);
            dateTimeVal = dateTimeVal.AddSeconds(unixTimeStampt).ToUniversalTime();
            return dateTimeVal;
        }

        private static string RandomString(int length)
        {
            var random = new Random();
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            return new String(Enumerable.Repeat(chars, length)
                .Select(x => x[random.Next(x.Length)]).ToArray());

        }

        [HttpPost]
        [Route("Login")]
        public async Task<IActionResult> Login([FromBody] UserLoginRequest user)
        {
            if (ModelState.IsValid)
            {
                var existingUser = await userManager.FindByEmailAsync(user.Email);

                if (existingUser == null)
                {
                    return BadRequest(new RegistrationResponse()
                    {
                        Errors = new List<string>(){
                            "User not found"
                        },
                        Success = false
                    });
                }

                var isCorrect = await userManager.CheckPasswordAsync(existingUser, user.Password);

                if (!isCorrect)
                {
                    return BadRequest(new RegistrationResponse()
                    {
                        Errors = new List<string>(){
                            "Email or password doesn't match"
                        },
                        Success = false
                    });
                }

                var jwtToken = GenerateJwtToken(existingUser);

                return Ok(jwtToken);
            }

            return BadRequest(new RegistrationResponse()
            {
                Errors = new List<string>(){
                    "Invalid payload"
                },
                Success = false
            });
        }

        [HttpPost]
        [Route("Register")]
        public async Task<IActionResult> Register([FromBody] UserRegistrationDto user)
        {
            if (ModelState.IsValid)
            {

                var existUser = await userManager.FindByEmailAsync(user.Email);

                if (existUser != null)
                {
                    var response = new RegistrationResponse()
                    {
                        Errors = new List<string>()
                        {
                            "Email already created"
                        },
                        Success = false
                    };
                    return BadRequest(response);
                }

                var newUser = new IdentityUser()
                {
                    Email = user.Email,
                    UserName = user.Username
                };

                var isCreated = await userManager.CreateAsync(newUser, user.Password);
                if (isCreated.Succeeded)
                {
                    var jwToken = GenerateJwtToken(newUser);
                    return Ok(jwToken);
                }
                return BadRequest(new RegistrationResponse()
                {
                    Errors = isCreated.Errors.Select(x => x.Description).ToList(),
                    Success = false
                });
            }
            return BadRequest(new RegistrationResponse()
            {
                Errors = new List<string>()
                {
                    "InvalidPayload"
                },
                Success = false
            });

        }
    }
}
