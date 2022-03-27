import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ResidencyTestComponent } from './residency-test.component';

describe('ResidencyTestComponent', () => {
  let component: ResidencyTestComponent;
  let fixture: ComponentFixture<ResidencyTestComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ResidencyTestComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ResidencyTestComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
