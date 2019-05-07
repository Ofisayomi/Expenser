using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AccountTransact.Model.DatabaseContext;
using AccountTransact.Model.DataEntities;
using AccountTransact.Model.ViewModel;

namespace AccountTransact.Controllers.Services
{
    public class ExpenseServices
    {
        private TransactionContext _context;
        public ExpenseServices(TransactionContext context){
            _context = context;
        }

        // This adds new expense to the database
        public async Task AddExpense(ExpenseViewModel model){
            if(model.currency == "EUR"){
                model.expense = model.expense * EuroCurrency();
            }
            
            Expense expense = new Expense{
                value = model.expense,
                Reason = model.reason,
                DateCreated = model.date
            };

            _context.Expense.Add(expense);
            await _context.SaveChangesAsync();
        }

// This method return lists of saved expenses
        public List<Expense> GetallExpenses(){
            return _context.Expense.ToList();
        }

// This method represents the API that will receive the Euro equivalent 
// of Pounds at the point of adding new expense
        public double EuroCurrency(){
            return 2.52;
        }
    }
}