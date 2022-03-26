import { NgModule, TRANSLATIONS_FORMAT} from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { CountriesComponent } from './countries/countries.component';
import { AttributesFormComponent } from './attributes/attributes-form/attributes-form.component';
import { FormsModule } from '@angular/forms';
import {TranslateLoader, TranslateModule} from '@ngx-translate/core';
import {TranslateHttpLoader} from '@ngx-translate/http-loader';
import {HttpClient, HttpClientModule} from '@angular/common/http';
import { CountriesFormComponent } from './countries/countries-form/countries-form.component';
import { CountriesDetailsComponent } from './countries/countries-details/countries-details.component';
import { AttributesComponent } from './attributes/attributes.component';
import { CountriesAttributesFormComponent } from './countries/countries-attributes-form/countries-attributes-form.component';

@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    CountriesComponent,
    AttributesFormComponent,
    CountriesFormComponent,
    CountriesDetailsComponent,
    AttributesComponent,
    CountriesAttributesFormComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule,
    TranslateModule.forRoot({
      loader: {
        provide: TranslateLoader,
        useFactory: HttpLoaderFactory,
        deps: [HttpClient]
      }
    })
  ],
  providers: [
    { provide: TRANSLATIONS_FORMAT, useValue: 'xlf' }],
  bootstrap: [AppComponent]
})
export class AppModule { }

// required for AOT compilation
export function HttpLoaderFactory(http: HttpClient): TranslateHttpLoader {
  return new TranslateHttpLoader(http);
}
