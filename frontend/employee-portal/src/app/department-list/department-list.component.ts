import { Component } from '@angular/core';

@Component({
  selector: 'app-department-list',
  standalone: true,
  templateUrl: './department-list.component.html',
  styleUrl: './department-list.component.css'
})
export class DepartmentListComponent {
  readonly departments = [
    { name: 'Human Resources', manager: 'Olivia Brooks', headcount: 8, location: 'HQ - Floor 3' },
    { name: 'Engineering', manager: 'Ethan Reed', headcount: 24, location: 'HQ - Floor 5' },
    { name: 'Finance', manager: 'Sophia Turner', headcount: 6, location: 'HQ - Floor 2' }
  ];
}