import { Routes } from '@angular/router';
import { DepartmentListComponent } from './department-list/department-list.component';
import { EmployeeFormComponent } from './employee-form/employee-form.component';
import { EmployeeListComponent } from './employee-list/employee-list.component';

export const routes: Routes = [
	{
		path: '',
		pathMatch: 'full',
		redirectTo: 'employees'
	},
	{
		path: 'employees',
		component: EmployeeListComponent
	},
	{
		path: 'manage',
		component: EmployeeFormComponent
	},
	{
		path: 'departments',
		component: DepartmentListComponent
	}
];
