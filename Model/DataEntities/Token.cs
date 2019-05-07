using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using AccountTransact.Model.DataEntities;

namespace AccountTransact.Model.DataEntities {
    public class Token {
        [Key]
        [Required]
        public int Id { get; set; }

        [Required]
        public string ClientId { get; set; }

        [Required]
        public string Value { get; set; }
        public int Type { get; set; }

        [Required]
        public string UserId { get; set; }

        [ForeignKey ("UserId")]
        public ApplicationUser User { get; set; }

        [Required]
        public DateTime CreatedDate { get; set; }

    }

}