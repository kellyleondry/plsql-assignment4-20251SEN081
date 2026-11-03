
SET SERVEROUTPUT ON;

DECLARE
    
    TYPE employee_record IS RECORD (
        employee_id NUMBER,
        first_name VARCHAR2(50),
        last_name VARCHAR2(50),
        salary NUMBER(10,2)
    );

    
    v_employee employee_record;

BEGIN
    -- Assign values to record fields
    v_employee.employee_id := 101;
    v_employee.first_name := 'John';
    v_employee.last_name := 'Mugisha';
    v_employee.salary := 850000;

    
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE INFORMATION');
    DBMS_OUTPUT.PUT_LINE('--------------------');

    DBMS_OUTPUT.PUT_LINE('ID: ' || v_employee.employee_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_employee.first_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_employee.last_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_employee.salary);

END;
/

