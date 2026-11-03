DECLARE
    v_rows NUMBER;

BEGIN
    UPDATE employees
    SET salary = salary + 50000
    WHERE employee_id = 101;

    v_rows := SQL%ROWCOUNT;

    DBMS_OUTPUT.PUT_LINE('Rows affected: ' || v_rows);

    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee updated successfully.');

    ELSIF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found.');
    END IF;

    ROLLBACK;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
