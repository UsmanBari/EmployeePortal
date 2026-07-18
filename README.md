# Employee Portal

A full-stack Employee Management System developed during my Full Stack Internship.

## Project Description

Employee Portal combines an ASP.NET Core Web API, an Angular standalone frontend, and a SQL Server database. The current version reflects the first two weeks of the internship project: database setup, backend connectivity with Entity Framework Core, and a responsive Angular dashboard using placeholder data.

The Angular UI currently uses mock data for the employee and department views. It will be connected to the backend APIs in the next development phase.

## Tech Stack

### Frontend

- Angular (Standalone Components)
- TypeScript
- Angular Router

### Backend

- ASP.NET Core Web API
- Entity Framework Core

### Database

- Microsoft SQL Server

## Folder Structure

```text
EmployeePortal/
│
├── backend/
│   └── EmployeePortal.Api/
├── frontend/
│   └── employee-portal/
├── database/
│   └── EmployeePortal.sql
└── README.md
```

## Features Completed

### Week 1

- Initial project setup
- SQL Server database creation
- Departments table
- Employees table
- ASP.NET Core Web API setup
- Angular project setup
- SQL Server Management Studio configuration
- Swagger integration
- Database connectivity

### Week 2

#### Database

- Inserted sample departments
- Inserted sample employees
- Practiced SQL INNER JOIN queries

#### Backend

- Installed Entity Framework Core
- Configured SQL Server connection
- Created `EmployeeDbContext`
- Created `Employee` model
- Created `Department` model
- Registered `DbContext` using dependency injection
- Successfully connected ASP.NET Core with SQL Server

#### Frontend

- Configured Angular routing
- Employee List page
- Employee Form page
- Department List page
- Navigation menu
- Router outlet configuration
- Default routing
- Responsive dashboard layout

## Current Project Status

### Completed

- SQL Server database
- Entity Framework Core integration
- ASP.NET Core backend
- Angular frontend
- Navigation
- Routing
- Dashboard layout

### In Progress

- REST API CRUD endpoints
- Angular `HttpClient` integration
- Frontend and backend communication

## Architecture

```text
Angular Frontend
	│
	│ (Coming Next)
	▼
ASP.NET Core Web API
	│
	▼
Entity Framework Core
	│
	▼
SQL Server
```

## Installation

### Prerequisites

- .NET 10 SDK
- Node.js 20+ and npm
- SQL Server or SQL Server Express

### Clone the Repository

```bash
git clone https://github.com/UsmanBari/EmployeePortal.git
cd EmployeePortal
```

### Restore the Database

Run `database/EmployeePortal.sql` in SQL Server Management Studio or your preferred SQL client to create the database and seed the initial data.

## How to Run the Backend

The backend connection string is defined in `backend/EmployeePortal.Api/appsettings.json`.

```bash
cd backend/EmployeePortal.Api
dotnet restore
dotnet run
```

The API starts with Swagger enabled in development.

## How to Run the Frontend

```bash
cd frontend/employee-portal
npm install
npm start
```

Open `http://localhost:4200/` in your browser.

## Technologies Used

- Angular 21
- TypeScript
- ASP.NET Core Web API
- Entity Framework Core
- SQL Server
- Swagger / OpenAPI

## Screenshots

Add screenshots here as the UI evolves.

- Dashboard screenshot placeholder
- Employee list screenshot placeholder
- Employee form screenshot placeholder
- Department list screenshot placeholder

## Future Improvements

- Build REST API CRUD endpoints for employees and departments
- Replace mock data with live API data
- Add form validation and better user feedback
- Expand the database schema as the application grows
- Improve authentication and authorization