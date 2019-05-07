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
             _expenseService.AddExpense(model).Wait();
             return Ok("Successful");
        }
        else{
            return BadRequest(ModelState);
        }
        }
        
        [HttpGet("Expenses")]
        public IActionResult Expenses(){
            try{
                ExpenseServices _expenseService = new ExpenseServices(_cxt);
                return Ok(_expenseService.GetallExpenses());
            }
            catch{
                return BadRequest();
            }
        }

        
    }
}
