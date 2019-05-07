using System.Collections.Generic;
using Microsoft.AspNetCore.Identity;

namespace AccountTransact.Model.DataEntities
{
    public class ApplicationUser: IdentityUser
    {
        public string FirstName {get; set;}
        public string LastName {get; set;}
        public ICollection<Expense> Expenses {get; set;}
        public ICollection<ActivationCode> ActivationCodes {get; set;}
        public ICollection<Token> Tokens {get; set;}
    }
}