using System.ComponentModel.DataAnnotations;

namespace AccountTransact.Models.ViewModel {
    public class LoginViewModel {
        [Display (Name = "Email Address")]
        [MaxLength (100, ErrorMessage = "Email Maximum length is {1}")]
        [Required (ErrorMessage = "Email Address is required")]
        [EmailAddress (ErrorMessage = "Not a valid Email Address")]
        public string Username { get; set; }

        [Display (Name = "Password")]
        [MaxLength (20, ErrorMessage = "Password Maximum length is {1}")]
        [Required (ErrorMessage = "Password is required")]
        public string Password { get; set; }
        public bool RememberMe { get; set; }

    }
}