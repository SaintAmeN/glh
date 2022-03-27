import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ResidencyTestResultComponent } from './residency-test-result.component';

describe('ResidencyTestResultComponent', () => {
  let component: ResidencyTestResultComponent;
  let fixture: ComponentFixture<ResidencyTestResultComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ResidencyTestResultComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ResidencyTestResultComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
