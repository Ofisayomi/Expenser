using System;
using System.ComponentModel.DataAnnotations;

namespace AccountTransact.Model.ViewModel
{
    public class ExpenseViewModel
    {
        [Required (ErrorMessage="Expense value is required")]
        public double expense {get; set;}
        [Required (ErrorMessage="Date for expense is required")]
        public DateTime date {get; set;}
        [Required (ErrorMessage="Reason for expense is required")]
        public string reason {get; set;}
        [Required]
        public string currency {get; set;}
    }
}