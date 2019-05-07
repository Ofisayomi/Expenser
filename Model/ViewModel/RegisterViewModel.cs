using System.ComponentModel.DataAnnotations;

namespace AccountTransact.Models.ViewModel{

    public class RegisterViewModel {

        [Required]
        public string surname { get; set; }

        [Required]
        public string firstname { get; set; }

        [Required]
        public string othername { get; set; }

        [Phone]
        [Required]
        public string phonenumber { get; set; }

        [Required]
        [MaxLength (10, ErrorMessage = "Matriculation Number Must be 10")]
        public string username { get; set; }

        [EmailAddress (ErrorMessage = "Invalid Email Address")]
        public string email { get; set; }
        [Required(ErrorMessage="Gender is Required")]
        public string gender { get; set; }

        [StringLength(15, ErrorMessage="Password Must not be more than 15")]
        [Compare ("confirmpass", ErrorMessage = "Password Confirmation failed")]
        public string password { get; set; }
        public string confirmpass { get; set; }

    }
}