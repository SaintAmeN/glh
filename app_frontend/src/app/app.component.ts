import {Component, Inject, LOCALE_ID} from '@angular/core';
import {TranslateService} from '@ngx-translate/core';

interface Locale {
  localeCode: string;
  label: string;
}

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'app_frontend_';
  constructor(private translate: TranslateService) {
    translate.setDefaultLang('en');
  }

  locales: Locale[] = [
    { localeCode: 'en', label: 'English' },
    { localeCode: 'pl', label: 'Polski'},
    { localeCode: 'ua', label: 'Ukrainian' },
  ];

  currentDate: number = Date.now();

  ngOnInit(): void {
  }

  useLanguage(language: string): void {
    this.translate.use(language);
  }
}
