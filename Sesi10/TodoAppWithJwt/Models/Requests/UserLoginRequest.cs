using System.ComponentModel.DataAnnotations;

namespace TodoAppWithJwt.Models.Requests
{
    public class UserLoginRequest
    {
        [Required]
        public string Email { get; set; }
        public string Password { get; set; }
    }
}
