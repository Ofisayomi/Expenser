using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AccountTransact.Model.DataEntities
{
    public class Expense
    {
        [Key]
        [DatabaseGenerated (DatabaseGeneratedOption.Identity)]
        public int Id { get; set;}
        [Required]
        public double value {get; set;}
        [Required]
        public string Reason {get; set;}
        public string UserId {get; set;}
        [ForeignKey("UserId")]
        public ApplicationUser User {get; set;}
        public DateTime DateCreated {get; set;}
    }
}