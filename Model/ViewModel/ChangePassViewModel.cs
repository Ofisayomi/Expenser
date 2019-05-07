using System.ComponentModel.DataAnnotations;

namespace AccountTransact.Models.ViewModel {
    public class ChangePassViewModel {
        [Required (ErrorMessage = "Activation code is required")]
        public string password { get; set; }

        [Required]
        [Compare ("confirm", ErrorMessage = "Password Confirmation failed")]
        [StringLength(15,ErrorMessage="Password must not be more than 15")]
        [MinLength(6,ErrorMessage="Password Should not be less than 6")]
        public string newpassword { get; set; }

        [Required]
        public string confirm { get; set; }
    }
}