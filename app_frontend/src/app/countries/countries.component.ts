import { Component, OnInit } from '@angular/core';
import {TaxationCountryDto} from "../services/models";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-countries',
  templateUrl: './countries.component.html',
  styleUrls: ['./countries.component.css']
})
export class CountriesComponent implements OnInit {
  taxationCountries: TaxationCountryDto[];

  constructor(private http: HttpClient) {
    this.taxationCountries = [];
  }

  ngOnInit(): void {
    this.refreshList()
  }

  refreshList() {
    this.http.get('http://localhost:8080/countries').subscribe((data) => {
      let list = data as TaxationCountryDto[];
      this.taxationCountries = list;
    });
  }
}
