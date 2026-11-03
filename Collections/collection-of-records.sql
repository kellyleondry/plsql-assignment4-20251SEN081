DECLARE
    -- 1. Define a record
    TYPE employee_record IS RECORD (
        employee_id employees.employee_id%TYPE,
        first_name employees.first_name%TYPE,
        last_name employees.last_name%TYPE,
        salary employees.salary%TYPE
    );

    -- 2. Define a collection of employee records
    TYPE employee_collection IS TABLE OF employee_record
    INDEX BY PLS_INTEGER;

    -- 3. Declare the collection variable
    v_employees employee_collection;

BEGIN
    -- 4. Store employee information
    v_employees(1).employee_id := 101;
    v_employees(1).first_name := 'John';
    v_employees(1).last_name := 'Mugisha';
    v_employees(1).salary := 850000;

    v_employees(2).employee_id := 102;
    v_employees(2).first_name := 'Alice';
    v_employees(2).last_name := 'Uwase';
    v_employees(2).salary := 1200000;

    v_employees(3).employee_id := 103;
    v_employees(3).first_name := 'David';
    v_employees(3).last_name := 'Niyonzima';
    v_employees(3).salary := 650000;

    -- 5. Display employee information
    FOR i IN 1..3 LOOP

        DBMS_OUTPUT.PUT_LINE('----------------------');

        DBMS_OUTPUT.PUT_LINE(
            'Employee ID: ' || v_employees(i).employee_id
        );

        DBMS_OUTPUT.PUT_LINE(
            'First Name: ' || v_employees(i).first_name
        );

        DBMS_OUTPUT.PUT_LINE(
            'Last Name: ' || v_employees(i).last_name
        );

        DBMS_OUTPUT.PUT_LINE(
            'Salary: ' || v_employees(i).salary
        );

    END LOOP;

END;
/
