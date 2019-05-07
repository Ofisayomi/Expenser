import { Component, Inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ExpenseViewModel } from '../model/expenseview.model';

@Component({
  selector: 'app-fetch-data',
  templateUrl: './fetch-data.component.html'
})
export class FetchDataComponent {
  public forecasts: WeatherForecast[];
  public expenses: ExpenseViewModel[];
  constructor(http: HttpClient, @Inject('BASE_URL') baseUrl: string) {
    http.get<ExpenseViewModel[]>(baseUrl + 'api/ClientsData/Expenses').subscribe(result => {
      this.expenses = result;
    }, error => console.error(error));
  }
}

interface WeatherForecast {
  dateFormatted: string;
  temperatureC: number;
  temperatureF: number;
  summary: string;
}
