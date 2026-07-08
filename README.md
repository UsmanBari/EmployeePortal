# Employee Portal

Employee Portal is a full-stack workspace with three parts:

- `frontend/employee-portal` - Angular client application.
- `backend/EmployeePortal.Api` - ASP.NET Core Web API.
- `database/EmployeePortal.sql` - SQL Server schema and seed data.

## Current Status

This is the initial project scaffold. The main pieces are in place, but the app is still at the starter stage.

- The frontend is created with Angular 21 and uses the standalone application setup.
- The backend is created with ASP.NET Core Web API, controllers, and Swagger/OpenAPI in development.
- The database script creates the initial employee and department tables with sample data.

## What Has Been Done So Far

- Created the Angular frontend project.
- Created the ASP.NET Core backend project.
- Added the SQL script for the `EmployeePortal` database.
- Published the project to GitHub as a single root repository.

## How To Run

### Frontend

```bash
cd frontend/employee-portal
npm install
npm start
```

The app runs at `http://localhost:4200/`.

### Backend

```bash
cd backend/EmployeePortal.Api
dotnet restore
dotnet run
```

### Database

Run `database/EmployeePortal.sql` against SQL Server or SQL Server Express to create the database and seed data.

## Next Steps

- Replace the Angular starter screen with the actual employee portal UI.
- Add employee and department CRUD endpoints to the API.
- Connect the frontend to the backend.
- Expand the database schema as the application grows.