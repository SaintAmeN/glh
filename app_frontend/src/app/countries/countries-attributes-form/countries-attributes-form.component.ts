import { Component, OnInit } from '@angular/core';
import {ActivatedRoute} from "@angular/router";

import {
  TaxationAttributeDto,
  TaxationAttributeValueRequestDto, TaxationCountryDetailsDto,
} from "../../services/models";
import {HttpClient} from "@angular/common/http";

const EMPTY_ATTRIBUTE_VALUE: TaxationAttributeValueRequestDto = {
  country_id: 0,
  attribute_id: 0,
  attribute_value: '',
};

@Component({
  selector: 'app-countries-attributes-form',
  templateUrl: './countries-attributes-form.component.html',
  styleUrls: ['./countries-attributes-form.component.css']
})
export class CountriesAttributesFormComponent implements OnInit {
  countryId: number;
  taxationAttributeValue: TaxationAttributeValueRequestDto;
  formActive: boolean;
  notification: any;
  clearNotificationInterval: any;
  taxationCountryName: string | null;
  taxationAttributes: TaxationAttributeDto[];
  language: string;

  constructor(private ActivatedRoute: ActivatedRoute, private http: HttpClient) {
    this.taxationAttributes = [];
    this.taxationAttributeValue = Object.assign({}, EMPTY_ATTRIBUTE_VALUE);

    this.formActive = true;
    this.taxationCountryName = null;
    let idString = this.ActivatedRoute.snapshot.paramMap.get("id")
    console.log(idString)
    if (idString) {
      this.countryId = parseInt(idString, 10);
      this.taxationAttributeValue.country_id = this.countryId;
    } else {
      this.countryId = 0;
    }
    let lang = localStorage.getItem('currentLanguageSet')
    if (lang) {
      this.language = lang;
    } else {
      this.language = 'en';
    }
  }

  ngOnInit(): void {
    this.refreshAttributesList();
    this.refreshDetails();
  }

  refreshDetails() {
    this.http.get('http://localhost:8080/countries/' + this.countryId).subscribe((data) => {
      let taxationCountry = data as TaxationCountryDetailsDto;
      this.taxationCountryName = taxationCountry.name;
    });
  }

  refreshAttributesList() {
    this.http.get('http://localhost:8080/attributes').subscribe((data) => {
      console.log(data)
      let list = data as TaxationAttributeDto[];
      this.taxationAttributes = list;
    });
  }

  clear(): void{
    this.taxationAttributeValue = Object.assign({}, EMPTY_ATTRIBUTE_VALUE);
  }

  send() {
    this.http.post('http://localhost:8080/countries/attribute', this.taxationAttributeValue).subscribe((data) => {
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
