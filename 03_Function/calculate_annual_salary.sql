CREATE OR REPLACE FUNCTION calculate_annual_salary (
    p_employee_id IN NUMBER
)
RETURN NUMBER
IS
    v_salary employees.salary%TYPE;

BEGIN
    SELECT salary
    INTO v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    RETURN v_salary * 12;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(
            -20001,
            'Employee does not exist.'
        );

    WHEN OTHERS THEN
        RAISE;
END;
/
