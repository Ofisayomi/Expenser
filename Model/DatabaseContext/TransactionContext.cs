using AccountTransact.Model.DataEntities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AccountTransact.Model.DatabaseContext
{
    public class TransactionContext: IdentityDbContext<ApplicationUser>
    {
         public TransactionContext (DbContextOptions<TransactionContext> options) : base (options) {

        }

        public DbSet<ApplicationUser> ApplicationUser {get; set;}
        public DbSet<ActivationCode> ActivationCode {get; set;}
        public DbSet<Expense> Expense {get; set;}
        public DbSet<Token> Token {get; set;}
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
           base.OnModelCreating(modelBuilder);

           modelBuilder.Entity<ApplicationUser>(entity=>{
            //   entity.HasMany(user=>user.Expenses).WithOne(exp=>exp.User);
           });
        }
    }
}