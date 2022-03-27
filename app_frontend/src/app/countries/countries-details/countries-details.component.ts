import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {TaxationCountryDetailsDto, TaxationCountryDto} from "../../services/models";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-countries-details',
  templateUrl: './countries-details.component.html',
  styleUrls: ['./countries-details.component.css']
})
export class CountriesDetailsComponent implements OnInit {
  countryId: number;
  taxationCountryName: string | null;
  taxationCountry: TaxationCountryDetailsDto | null;
  language: string;

  constructor(private ActivatedRoute: ActivatedRoute, private http: HttpClient) {
    this.taxationCountryName = '';
    this.taxationCountry = null;
    let idString = this.ActivatedRoute.snapshot.paramMap.get("id")
    if (idString) {
      this.countryId = parseInt(idString, 10);
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
    this.refreshDetails();
  }

  refreshDetails() {
    this.http.get('http://localhost:8080/countries/' + this.countryId).subscribe((data) => {
      this.taxationCountry = data as TaxationCountryDetailsDto;
      this.taxationCountryName = this.taxationCountry.name;
      console.log(this.taxationCountry)

      this.taxationCountry.attributes.sort((a,b) => (a.benchmarkAttributeId > b.benchmarkAttributeId) ? 1 : ((b.benchmarkAttributeId > a.benchmarkAttributeId) ? -1 : 0))
    });
  }
}
