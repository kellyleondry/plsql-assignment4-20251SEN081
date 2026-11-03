# plsql-assignment4

# Employee Management System Using Oracle PL/SQL

## 1. Student Information

## NAME: Munyengabe Ishimwe Kelly Leondry 
## ID: 20251SEN081



## 2. Project Description

The Employee Management System is a database project developed using Oracle PL/SQL. Its purpose is to manage employee information, department details, and employee salary changes.

The project demonstrates how PL/SQL can be used to retrieve, insert, update, delete, and process employee records while maintaining data accuracy and handling errors.

It also demonstrates important PL/SQL programming concepts, including records, collections, cursors, bulk processing, stored procedures, functions, and exception handling.

## 3. Database Structure

The project contains three main tables:

### Departments
Stores information about company departments.

- department_id
- department_name
- location

### Employees
Stores employee information.

- employee_id
- first_name
- last_name
- email
- hire_date
- salary
- department_id

### Salary History
Stores records of employee salary changes.

- history_id
- employee_id
- old_salary
- new_salary
- change_date

## 4. PL/SQL Concepts Demonstrated

The project covers the following concepts:

### 4.1 Records
- User-defined records.
- Table-based records using `%ROWTYPE`.
- Accessing and processing employee information.

### 4.2 Collections
- Associative arrays.
- Nested tables.
- VARRAYs.
- Collections of employee records.

### 4.3 Cursors
- Implicit cursors.
- Explicit cursors.
- Cursor attributes such as `%FOUND`, `%NOTFOUND`, and `%ROWCOUNT`.

### 4.4 Bulk Processing
- `BULK COLLECT` for retrieving multiple records.
- `FORALL` for performing bulk DML operations.
- Understanding the performance advantages of bulk processing.

### 4.5 Stored Procedures
- Creating and executing stored procedures.
- Using IN and OUT parameters.
- Processing employee information.

### 4.6 Functions
- Creating functions that return values.
- Calculating annual employee salaries.
- Calling functions from PL/SQL blocks and SQL statements.

### 4.7 Exception Handling
- Predefined exceptions such as `NO_DATA_FOUND` and `TOO_MANY_ROWS`.
- User-defined exceptions.
- `RAISE` and `RAISE_APPLICATION_ERROR`.
- Handling unexpected errors using `WHEN OTHERS`.

## 5. How to Run the Project

1. Install Oracle Database 21c.
2. Install and open Oracle SQL Developer.
3. Connect to your Oracle database.
4. Create or select your project database user.
5. Execute the SQL scripts in the following order:

   - Create the database tables.
   - Insert sample departments.
   - Insert sample employees.
   - Create PL/SQL records and collections.
   - Execute cursor examples.
   - Execute bulk processing examples.
   - Create stored procedures and functions.
   - Test exception handling.

6. Enable DBMS Output in SQL Developer to view the results of PL/SQL blocks.

## 6. Testing

The project can be tested using different employee IDs and operations.

Examples:

- Retrieve an existing employee.
- Search for a non-existing employee.
- Calculate an employee's annual salary.
- Update an employee's salary.
- Retrieve multiple employees using cursors.
- Process multiple records using bulk processing.
- Test exception handling with invalid employee IDs.

## 7. Performance Considerations

Bulk processing improves performance when handling large amounts of data.

`BULK COLLECT` retrieves multiple records into collections, while `FORALL` performs bulk DML operations.

These techniques reduce communication between the SQL and PL/SQL engines compared with processing each record individually.

## 8. Conclusion

This project demonstrates the practical application of Oracle PL/SQL in database development and management.

Through the Employee Management System, the project provides practical experience with database operations, procedural programming, record management, collections, cursors, bulk processing, reusable procedures and functions, and exception handling.

It also demonstrates how PL/SQL can help build structured, reusable, and reliable database applications.
