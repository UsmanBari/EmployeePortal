import { TestBed } from '@angular/core/testing';
import { EmployeeFormComponent } from './employee-form.component';

describe('EmployeeFormComponent', () => {
  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [EmployeeFormComponent],
    }).compileComponents();
  });

  it('should create', () => {
    const fixture = TestBed.createComponent(EmployeeFormComponent);
    expect(fixture.componentInstance).toBeTruthy();
  });
});
