import { Component, OnInit } from '@angular/core';
import {TaxationAttributeValueDto, TaxationCountryDto} from "../../services/models";
import {HttpClient} from "@angular/common/http";

const EMPTY_ATTRIBUTE_VALUE: TaxationAttributeValueDto = {
  attribute_id: 0,
  attribute_value: '',
};

@Component({
  selector: 'app-countries-attributes-form',
  templateUrl: './countries-attributes-form.component.html',
  styleUrls: ['./countries-attributes-form.component.css']
})
export class CountriesAttributesFormComponent implements OnInit {
  taxationAttributeValue: TaxationAttributeValueDto;
  formActive: boolean;
  notification: any;
  clearNotificationInterval: any;

  constructor(private http: HttpClient) {
    this.taxationAttributeValue = Object.assign({}, EMPTY_ATTRIBUTE_VALUE);
    this.formActive = true;
  }

  ngOnInit(): void {
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
