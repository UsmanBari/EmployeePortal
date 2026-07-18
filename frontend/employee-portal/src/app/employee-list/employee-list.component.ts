import { Component } from '@angular/core';

@Component({
  selector: 'app-employee-list',
  standalone: true,
  templateUrl: './employee-list.component.html',
  styleUrl: './employee-list.component.css'
})
export class EmployeeListComponent {
  readonly employees = [
    { id: 1001, name: 'Ava Johnson', title: 'HR Specialist', department: 'Human Resources', status: 'Active' },
    { id: 1002, name: 'Noah Patel', title: 'Backend Developer', department: 'Engineering', status: 'Active' },
    { id: 1003, name: 'Mia Chen', title: 'Payroll Analyst', department: 'Finance', status: 'On Leave' }
  ];
}
