
CREATE OR REPLACE PROCEDURE show_employee (
    p_employee_id IN NUMBER
)
IS
    v_employee employees%ROWTYPE;

BEGIN
    SELECT *
    INTO v_employee
    FROM employees
    WHERE employee_id = p_employee_id;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee.employee_id);
    DBMS_OUTPUT.PUT_LINE('First Name: ' || v_employee.first_name);
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_employee.last_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_employee.salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: Employee does not exist.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
        RAISE;
END;
/
