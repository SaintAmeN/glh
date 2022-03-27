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
    let currentLanguageSet = localStorage.getItem('currentLanguageSet')
    if (currentLanguageSet != null) {
      this.setLanguage(currentLanguageSet);
    } else {
      translate.setDefaultLang('en');
    }

  }

  locales: Locale[] = [
    {localeCode: 'en', label: 'English'},
    {localeCode: 'pl', label: 'Polski'},
    {localeCode: 'ua', label: 'Ukrainian'},
  ];

  currentDate: number = Date.now();

  ngOnInit(): void {
  }

  setLanguage(language: string): void {
    this.translate.use(language);
    localStorage.setItem('currentLanguageSet', language);
  }

  useLanguage(language: string): void {
    this.setLanguage(language);
  }
}
