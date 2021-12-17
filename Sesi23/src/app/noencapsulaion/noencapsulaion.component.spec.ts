import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NoencapsulaionComponent } from './noencapsulaion.component';

describe('NoencapsulaionComponent', () => {
  let component: NoencapsulaionComponent;
  let fixture: ComponentFixture<NoencapsulaionComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ NoencapsulaionComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(NoencapsulaionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
