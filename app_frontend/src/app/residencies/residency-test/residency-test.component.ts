import {Component, OnInit} from '@angular/core';
import {ActivatedRoute, Router} from "@angular/router";
import {HttpClient} from "@angular/common/http";
import {ResidencyFormDto, ResidencyFormQuestionDto, TaxationCountryDetailsDto} from "../../services/models";

@Component({
  selector: 'app-residency-test',
  templateUrl: './residency-test.component.html',
  styleUrls: ['./residency-test.component.css']
})
export class ResidencyTestComponent implements OnInit {
  form: ResidencyFormDto | null;
  country: string;
  language: string;
  currentQuestion: ResidencyFormQuestionDto | null;
  currentQuestionNumber: number | null;

  constructor(private ActivatedRoute: ActivatedRoute, private http: HttpClient, private router: Router) {
    this.currentQuestion = null;
    this.currentQuestionNumber = null;
    let idString = this.ActivatedRoute.snapshot.paramMap.get("code")
    if (idString) {
      this.country = idString
    } else {
      this.country = '';
    }

    let lang = localStorage.getItem('currentLanguageSet')
    if (lang) {
      this.language = lang;
    } else {
      this.language = 'en';
    }
    this.form = null;
  }

  ngOnInit(): void {
    this.downloadForm();
  }

  downloadForm() {
    this.http.get('http://localhost:8080/residency/' + this.country + "/" + this.language).subscribe((data) => {
      this.form = data as ResidencyFormDto;
      this.form.questions.sort((a,b) => (a.order > b.order) ? 1 : ((b.order > a.order) ? -1 : 0))

      this.nextQuestion();
    });
  }

  nextQuestion(): void {
    if (this.currentQuestionNumber == null) {
      this.currentQuestionNumber = 0;
    } else {
      this.currentQuestionNumber++;
    }
    if (this.form) {
      this.currentQuestion = this.form.questions[this.currentQuestionNumber];
    }
  }

  questionAnswered(answer: any) {
    console.log(answer)
    if (answer == null) {
      this.nextQuestion()
      return;
    }

    if (answer) {
      this.router.navigate(['/residencies/test/result/' + 1+"/"+this.country], {});
    }else{
      this.router.navigate(['/residencies/test/result/' + 0+"/"+this.country], {});
    }
  }
}
