import { Component, OnInit } from '@angular/core';
import {TaxationAttributeDto, TaxationCountryDto} from "../services/models";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-attributes',
  templateUrl: './attributes.component.html',
  styleUrls: ['./attributes.component.css']
})
export class AttributesComponent implements OnInit {
  taxationAttributes: TaxationAttributeDto[];
  language: string;


  constructor(private http: HttpClient) {
    this.taxationAttributes = [];

    let lang = localStorage.getItem('currentLanguageSet')
    if (lang) {
      this.language = lang;
    } else {
      this.language = 'en';
    }
  }

  ngOnInit(): void {
    this.refreshList()
  }

  refreshList() {
    // http://localhost:8080/offers GET -> lista ofert
    this.http.get('http://localhost:8080/attributes').subscribe((data) => {
      let list = data as TaxationAttributeDto[];
      this.taxationAttributes = list;
    });
  }
}
