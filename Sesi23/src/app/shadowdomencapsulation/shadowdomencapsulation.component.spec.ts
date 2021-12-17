import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ShadowdomencapsulationComponent } from './shadowdomencapsulation.component';

describe('ShadowdomencapsulationComponent', () => {
  let component: ShadowdomencapsulationComponent;
  let fixture: ComponentFixture<ShadowdomencapsulationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ShadowdomencapsulationComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ShadowdomencapsulationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
