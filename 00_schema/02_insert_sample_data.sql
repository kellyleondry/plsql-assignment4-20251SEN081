-----Sample data for department Table-----
INSERT INTO departments
(department_id, department_name, location)
VALUES (10, 'IT', 'Kigali');

INSERT INTO departments
(department_id, department_name, location)
VALUES (20, 'Finance', 'Kigali');

INSERT INTO departments
(department_id, department_name, location)
VALUES (30, 'Human Resources', 'Musanze');

INSERT INTO departments
(department_id, department_name, location)
VALUES (40, 'Marketing', 'Huye');

INSERT INTO departments
(department_id, department_name, location)
VALUES (50, 'Operations', 'Rubavu');


-----Sample data for Employees Table-----

INSERT ALL
    INTO employees VALUES
    (101, 'John', 'Mugisha', 'john@company.com',
     DATE '2023-01-15', 850000, 10)

    INTO employees VALUES
    (102, 'Alice', 'Uwase', 'alice@company.com',
     DATE '2022-05-10', 1200000, 20)

    INTO employees VALUES
    (103, 'David', 'Niyonzima', 'david@company.com',
     DATE '2024-02-20', 650000, 10)

    INTO employees VALUES
    (104, 'Sarah', 'Mukamana', 'sarah@company.com',
     DATE '2021-08-12', 1500000, 30)

    INTO employees VALUES
    (105, 'Peter', 'Habimana', 'peter@company.com',
     DATE '2023-11-05', 950000, 40)

    INTO employees VALUES
    (106, 'Grace', 'Iradukunda', 'grace@company.com',
     DATE '2022-03-18', 1100000, 20)

    INTO employees VALUES
    (107, 'Michael', 'Nsengimana', 'michael@company.com',
     DATE '2024-06-01', 700000, 50)

    INTO employees VALUES
    (108, 'Diane', 'Ingabire', 'diane@company.com',
     DATE '2023-09-25', 900000, 30)

    INTO employees VALUES
    (109, 'Eric', 'Nkurunziza', 'eric@company.com',
     DATE '2021-12-10', 1800000, 10)

    INTO employees VALUES
    (110, 'Beatrice', 'Nyirahabimana', 'beatrice@company.com',
     DATE '2022-07-14', 1300000, 40)
  
  SELECT * FROM dual;
