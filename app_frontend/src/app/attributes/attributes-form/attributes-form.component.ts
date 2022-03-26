import {Component, OnInit} from '@angular/core';
import {TaxationAttributeDto, TaxationCountryDto} from "../../services/models";
import {HttpClient} from "@angular/common/http";

const EMPTY_ATTRIBUTES: TaxationAttributeDto = {
  benchmarkAttributeId: 0,
  name_english: "",
  name_polish: "",
  name_ukrainian: ""
};

@Component({
  selector: 'app-attributes-form',
  templateUrl: './attributes-form.component.html',
  styleUrls: ['./attributes-form.component.css']
})
export class AttributesFormComponent implements OnInit {
  taxationAttribute: TaxationAttributeDto;
  formActive: boolean;
  notification: any;
  clearNotificationInterval: any;

  constructor(private http: HttpClient) {
    this.taxationAttribute = Object.assign({}, EMPTY_ATTRIBUTES);
    this.formActive = true;
  }

  ngOnInit(): void {
  }

  clear(): void{
    this.taxationAttribute = Object.assign({}, EMPTY_ATTRIBUTES);
  }

  send() {
    this.http.post('http://localhost:8080/attributes', this.taxationAttribute).subscribe((data) => {
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
