import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CountriesAttributesFormComponent } from './countries-attributes-form.component';

describe('CountriesAttributesFormComponent', () => {
  let component: CountriesAttributesFormComponent;
  let fixture: ComponentFixture<CountriesAttributesFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CountriesAttributesFormComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CountriesAttributesFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
