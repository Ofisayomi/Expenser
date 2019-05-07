using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AccountTransact.Model.DataEntities{
    public class ActivationCode {
        [Key]
        [DatabaseGenerated (DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string UserId { get; set; }

        [ForeignKey ("UserId")]
        public ApplicationUser User { get; set; }
        public string Code { get; set; }
        public DateTime DateCreated { get; set; }
    }
}