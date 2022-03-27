import {Component, OnInit} from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {ActivatedRoute, Router} from "@angular/router";

@Component({
  selector: 'app-residency-test-result',
  templateUrl: './residency-test-result.component.html',
  styleUrls: ['./residency-test-result.component.css']
})
export class ResidencyTestResultComponent implements OnInit {
  result: number;
  countryCode: string;

  constructor(private ActivatedRoute: ActivatedRoute, private http: HttpClient, private router: Router) {
    let resultString = this.ActivatedRoute.snapshot.paramMap.get("result")
    if (resultString) {
      this.result = parseInt(resultString)
    } else {
      this.result = 0;
    }

    let idString = this.ActivatedRoute.snapshot.paramMap.get("countryCode")
    if (idString) {
      this.countryCode = idString
    } else {
      this.countryCode = '';
    }
  }

  ngOnInit(): void {
  }

}
