using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AccountTransact.Controllers.Services;
using AccountTransact.Model.DatabaseContext;
using AccountTransact.Model.DataEntities;
using AccountTransact.Model.ViewModel;
using Microsoft.AspNetCore.Mvc;

namespace AccountTransact.Controllers
{
    [Route("api/[controller]")]
    public class ClientsDataController : Controller
    {
        TransactionContext _cxt;
        public ClientsDataController(TransactionContext cxt){
            _cxt = cxt;
        }

        [HttpPost("AddExpense")]
        public IActionResult AddExpense([FromBody]ExpenseViewModel model){
        if(ModelState.IsValid){
            ExpenseServices _expenseService = new ExpenseServices(_cxt);
            if(model.currency == "EUR"){
                model.expense = model.expense * _expenseService.EuroCurrency();
            }
            
            Expense expense = new Expense{
                value = model.expense,
                Reason = model.reason,
                DateCreated = model.date
            };
            
             if(_expenseService.CreateExpense(expense))
            
             return new OkObjectResult("New Expense Successfully Added...");
             else return BadRequest("New Expense Creation failed");
        }
        else{
            return BadRequest(ModelState);
        }
        }
        
        [HttpGet("Expenses")]
        public IActionResult Expenses(){
            try{
                ExpenseServices _expenseService = new ExpenseServices(_cxt);
                return Ok(_expenseService.GetAllExpense());
            }
            catch{
                return BadRequest();
            }
        }

        
    }
}
