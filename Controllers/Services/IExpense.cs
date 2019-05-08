using System.Collections.Generic;
using AccountTransact.Model.DataEntities;

namespace AccountTransact.Controllers.Services
{
    // Interface for implementing the Expenses methods
    public interface IExpense
    {
         bool CreateExpense(Expense ex);
         Expense Getby_Id(int Id);
         List<Expense> GetAllExpense();
         bool Removeby_Id(int Id);

    }
}