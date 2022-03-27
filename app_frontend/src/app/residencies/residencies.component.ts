import { Component, OnInit } from '@angular/core';


interface ResidencyTest {
  country: string;
  code: string;
}

@Component({
  selector: 'app-residencies',
  templateUrl: './residencies.component.html',
  styleUrls: ['./residencies.component.css']
})
export class ResidenciesComponent implements OnInit {

  tests: ResidencyTest[] = [
    {code: 'gb', country: 'Great Britain'},
    {code: 'pl', country: 'Poland'},
  ];

  constructor() { }

  ngOnInit(): void {
  }

}
