import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ResidenciesComponent } from './residencies.component';

describe('ResidenciesComponent', () => {
  let component: ResidenciesComponent;
  let fixture: ComponentFixture<ResidenciesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ResidenciesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ResidenciesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
