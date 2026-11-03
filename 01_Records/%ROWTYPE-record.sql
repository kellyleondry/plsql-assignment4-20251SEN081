DECLARE
    
    v_employee employees%ROWTYPE;

BEGIN
    
    SELECT *
    INTO v_employee
    FROM employees
    WHERE employee_id = 101;

    
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE INFORMATION');
    DBMS_OUTPUT.PUT_LINE('--------------------');

    DBMS_OUTPUT.PUT_LINE('ID: ' || v_employee.employee_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_employee.first_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_employee.last_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || v_employee.email);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_employee.salary);
    DBMS_OUTPUT.PUT_LINE('Department ID: ' || v_employee.department_id);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee was returned.');
END;
/

