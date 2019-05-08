using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AccountTransact.Model.DatabaseContext;
using AccountTransact.Model.DataEntities;
using AccountTransact.Model.ViewModel;

namespace AccountTransact.Controllers.Services
{
    public class ExpenseServices:IExpense
    {
        private TransactionContext _context;
        public ExpenseServices(TransactionContext context){
            _context = context;
        }

// This method represents the API that will receive the Euro equivalent 
// of Pounds at the point of adding new expense
        public double EuroCurrency(){
            // This value is assumed to be that 1 pound = 2.52 Euro
            return 2.52;
        }

// This creates new expense to the database
        public bool CreateExpense(Expense ex)
        {
            _context.Expense.Add(ex);
            if(_context.SaveChanges()==1)
            {
                return true;
            }
            return false;
        }

// This method retrieves an expense from the database
        public Expense Getby_Id(int Id)
        {
            return _context.Expense.Where(exp=> exp.Id == Id).FirstOrDefault();
        }

// This method return lists of saved expenses
        public List<Expense> GetAllExpense()
        {
            return _context.Expense.ToList();
        }

// This method delete and Expense from the database record
        public bool Removeby_Id(int Id)
        {
            Expense exp = _context.Expense.Where(ex=> ex.Id == Id).FirstOrDefault();
            _context.Expense.Remove(exp);
            if(_context.SaveChanges() == 1){ 
                return true;
                } 
                return false;
        }
    }
}