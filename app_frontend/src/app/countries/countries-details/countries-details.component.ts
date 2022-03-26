import {Component, OnInit} from '@angular/core';
import {ActivatedRoute} from "@angular/router";
import {TaxationCountryDto} from "../../services/models";
import {HttpClient} from "@angular/common/http";

@Component({
  selector: 'app-countries-details',
  templateUrl: './countries-details.component.html',
  styleUrls: ['./countries-details.component.css']
})
export class CountriesDetailsComponent implements OnInit {
  countryId: number;
  taxationCountry: TaxationCountryDto | null;

  constructor(private ActivatedRoute: ActivatedRoute, private http: HttpClient) {
    let idString = this.ActivatedRoute.snapshot.paramMap.get("id")
    if (idString) {
      this.countryId = parseInt(idString, 10);
    }
    this.countryId = 0;
    this.taxationCountry = null;
  }

  ngOnInit(): void {
    this.refreshDetails();
  }

  refreshDetails() {
    this.http.get('http://localhost:8080/countries/' + this.countryId).subscribe((data) => {
      this.taxationCountry = data as TaxationCountryDto;
    });
  }
}
