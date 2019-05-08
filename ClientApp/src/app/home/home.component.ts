import { Component, Inject } from '@angular/core';
import { ExpenseModel } from '../model/expense.model';
import { NgForm } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { ResponseType, ResponseContentType } from '@angular/http';


@Component({
  selector: 'app-component',
  templateUrl: './home.component.html'
})
export class HomeComponent {
  public currency = 'PUD';
  public expense: ExpenseModel = new ExpenseModel();
  public message: string;
  alertclass: string;
  public formSubmitted: boolean;
  _baseUrl: string;
  constructor(public http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    this._baseUrl = baseUrl;
  }

  public AddExpense(ExpenseData: NgForm) {
    if(ExpenseData.valid) {
      this.expense.currency = this.currency;
      this.formSubmitted = true;
      this.http.post(this._baseUrl + 'api/ClientsData/AddExpense', this.expense, { responseType: 'text'}).subscribe(res => {
        this.message = res;
        this.alertclass = 'alert-info';
      }, error => {
        this.message = error.error.text || error.error;
        this.alertclass = 'alert-danger';
      });
    } else {
      this.message = 'Required fields not supplied';
      this.alertclass = 'alert-danger';
    }

    this.expense.expense = 0;
    this.expense.reason = '';
  }

  public ChangeCurrency(currencies: string):string {
    return this.currency = currencies;
  }
}
