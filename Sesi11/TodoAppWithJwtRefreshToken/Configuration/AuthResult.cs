using System.Collections.Generic;

namespace TodoAppWithJwtRefreshToken.Configuration
{
    public class AuthResult
    {
        public List<string> Errors { get; set; }
        public bool Success { get; set; }
        public string Token { get; set; }
        public string RefreshToken { get; set; }
    }
}
