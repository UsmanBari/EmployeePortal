import { TestBed } from '@angular/core/testing';
import { EmployeeListComponent } from './employee-list.component';

describe('EmployeeListComponent', () => {
  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [EmployeeListComponent],
    }).compileComponents();
  });

  it('should create', () => {
    const fixture = TestBed.createComponent(EmployeeListComponent);
    expect(fixture.componentInstance).toBeTruthy();
  });
});
