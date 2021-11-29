using System.ComponentModel.DataAnnotations;

namespace TodoAppWithJwtRefreshToken.Models.Requests
{
    public class UserRegistrationDto
    {
        [Required]
        public string Username { get; set; }
        [Required]
        public string Email { get; set; }
        [Required]
        public string Password { get; set; }
    }
}
