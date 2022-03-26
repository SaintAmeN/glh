import { Component, OnInit } from '@angular/core';
import {TaxationCountryDto} from "../../services/models";
import {HttpClient} from "@angular/common/http";

const EMPTY_COUNTRY: TaxationCountryDto = {
  id: 0,
  name: '',
};
@Component({
  selector: 'app-countries-form',
  templateUrl: './countries-form.component.html',
  styleUrls: ['./countries-form.component.css']
})
export class CountriesFormComponent implements OnInit {
  taxationCountry: TaxationCountryDto;
  formActive: boolean;
  notification: any;
  clearNotificationInterval: any;

  constructor(private http: HttpClient) {
    this.taxationCountry = Object.assign({}, EMPTY_COUNTRY);
    this.formActive = true;
  }

  ngOnInit(): void {
  }

  clear(): void{
    this.taxationCountry = Object.assign({}, EMPTY_COUNTRY);
  }

  send() {
    this.http.post('http://localhost:8080/countries', this.taxationCountry).subscribe((data) => {
      this.formActive = true;
      this.clear();
      this.notification = 'Car Offer has been saved!';

      if (this.clearNotificationInterval != null) {
        clearTimeout(this.clearNotificationInterval);
      }

      this.clearNotificationInterval = setTimeout(() => {
        this.clear();
      }, 3000);
    });
  }

  clearNotification() {
    this.notification = null;
    this.clearNotificationInterval = null;
  }
}
