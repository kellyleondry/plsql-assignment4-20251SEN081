----DEPARTMENT TABLE----
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL,
    location VARCHAR2(100)
);


-----EMPLOYEES TABLE-----
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    hire_date DATE DEFAULT SYSDATE,
    salary NUMBER(10,2) NOT NULL,
    department_id NUMBER,

    CONSTRAINT fk_employee_department
    FOREIGN KEY (department_id)
    REFERENCES departments(department_id),

    CONSTRAINT chk_employee_salary
    CHECK (salary > 0)
);


-----SALARY HISTORY TABLE-----

CREATE TABLE salary_history (
    history_id NUMBER PRIMARY KEY,
    employee_id NUMBER NOT NULL,
    old_salary NUMBER(10,2),
    new_salary NUMBER(10,2) NOT NULL,
    change_date DATE DEFAULT SYSDATE,

    CONSTRAINT fk_salary_employee
    FOREIGN KEY (employee_id)
    REFERENCES employees(employee_id)
);



