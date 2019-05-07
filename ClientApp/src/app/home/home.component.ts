import { Component, Inject } from '@angular/core';
import { ExpenseModel } from '../model/expense.model';
import { NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';


@Component({
  selector: 'app-component',
  templateUrl: './home.component.html'
})
export class HomeComponent {
  public currency = 'PUD';
  public expense: ExpenseModel = new ExpenseModel();
  public message: string;
  public formSubmitted: boolean;
  _baseUrl: string;
  constructor(public http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this._baseUrl = baseUrl;
  }

  public AddExpense(ExpenseData: NgForm) {
    if(ExpenseData.valid) {
      console.log(this.expense);
      this.expense.currency = this.currency;
      this.formSubmitted = true;
      this.http.post(this._baseUrl + 'api/ClientsData/AddExpense', this.expense).subscribe(res => {
        this.message = JSON.stringify(res);
        console.log(res);
      }, error => {
        console.log(error);
      });
    } else {
      this.message ='Required fields not supplied';
    }
  }

  public ChangeCurrency(currencies: string):string {
    return this.currency = currencies;
  }
}
