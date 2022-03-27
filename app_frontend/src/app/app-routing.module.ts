import {NgModule} from '@angular/core';
import {RouterModule, Routes} from '@angular/router';
import {HomeComponent} from './home/home.component';
import {CountriesComponent} from "./countries/countries.component";
import {AttributesFormComponent} from "./attributes/attributes-form/attributes-form.component";
import {CountriesFormComponent} from "./countries/countries-form/countries-form.component";
import {CountriesDetailsComponent} from "./countries/countries-details/countries-details.component";
import {AttributesComponent} from "./attributes/attributes.component";
import {CountriesAttributesFormComponent} from "./countries/countries-attributes-form/countries-attributes-form.component";
import {ResidenciesComponent} from "./residencies/residencies.component";
import {ResidencyTestComponent} from "./residencies/residency-test/residency-test.component";
import {ResidencyTestResultComponent} from "./residencies/residency-test-result/residency-test-result.component";

const routes: Routes = [
  { path: '', redirectTo: 'home', pathMatch: 'full' },
  {path: "home", component: HomeComponent},
  {path: "countries", component: CountriesComponent},
  {path: "countries/countries-form", component: CountriesFormComponent},
  {path: "countries/countries-details/:id", component: CountriesDetailsComponent},
  {path: "countries/attributes-form/:id", component: CountriesAttributesFormComponent},
  {path: "attributes/attributes-form", component: AttributesFormComponent},
  {path: "attributes", component: AttributesComponent},
  {path: "residencies", component: ResidenciesComponent},
  {path: "residencies/test/:code", component: ResidencyTestComponent},
  {path: "residencies/test/result/:result/:countryCode", component: ResidencyTestResultComponent},
  { path: '**', redirectTo: 'not-found', pathMatch: 'full' }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {
}
