DECLARE
    TYPE employee_collection IS TABLE OF employees%ROWTYPE;

    v_employees employee_collection;

BEGIN
    SELECT *
    BULK COLLECT INTO v_employees
    FROM employees;

    FOR i IN 1..v_employees.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE(
            'ID: ' || v_employees(i).employee_id ||
            ' | Name: ' || v_employees(i).first_name ||
            ' | Salary: ' || v_employees(i).salary
        );
    END LOOP;

END;
/
