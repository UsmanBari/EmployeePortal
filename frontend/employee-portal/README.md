# Employee Portal

Employee Portal is a full-stack project that is being built with an Angular frontend, an ASP.NET Core Web API backend, and a SQL Server schema for employee and department data.

## Current Progress

The project is still in the early scaffold stage, but the main pieces are in place:

- Angular 21 frontend created with the standalone application structure.
- ASP.NET Core API backend with controller support and Swagger enabled in development.
- SQL script for the initial `Departments` and `Employees` tables, including seed data.

## Project Structure

- `frontend/employee-portal` - Angular client application.
- `backend/EmployeePortal.Api` - ASP.NET Core Web API.
- `database/EmployeePortal.sql` - SQL Server schema and sample data.

## Frontend

The frontend is an Angular application with the default app shell still in place. Current files include the root component, routing setup, and global styles.

Run it locally with:

```bash
npm install
npm start
```

Then open `http://localhost:4200/`.

## Backend

The backend is a minimal ASP.NET Core API targeting `net10.0` with:

- `AddControllers()` enabled.
- Swagger/OpenAPI available in development.
- A sample `WeatherForecastController` still present from the starter template.

Run it locally from the backend project folder with:

```bash
dotnet restore
dotnet run
```

## Database

The database script creates an `EmployeePortal` database with:

- `Departments` table
- `Employees` table
- Sample rows for both tables

Run `database/EmployeePortal.sql` against SQL Server or SQL Server Express to set up the schema.

## What I Have Done So Far

- Created the Angular frontend scaffold.
- Created the ASP.NET Core API scaffold.
- Added the initial SQL schema for departments and employees.
- Kept the project ready for connecting the frontend to the backend next.

## Next Steps

- Replace the starter Angular landing page with the actual employee portal UI.
- Add employee and department CRUD endpoints to the API.
- Connect the Angular app to the backend API.
- Expand the database schema as the feature set grows.
