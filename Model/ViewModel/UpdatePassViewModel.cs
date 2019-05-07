using System.ComponentModel.DataAnnotations;

namespace AccountTransact.Models.ViewModel {
    public class UpdatePassViewModel {
        [Required (ErrorMessage = "Username is required")]
        public string username { get; set; }

        [Required (ErrorMessage = "Activation code is required")]
        public string activationcode { get; set; }

        [Required]
        [Compare ("confirmpassword", ErrorMessage = "Password Confirmation failed")]
        public string password { get; set; }

        [Required]
        public string confirmpassword { get; set; }
    }
}