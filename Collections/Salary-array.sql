-----storing employee salaries using an associative array-------

DECLARE
    -- Define an associative array
    TYPE salary_array IS TABLE OF NUMBER
    INDEX BY PLS_INTEGER;

    -- Declare collection variable
    v_salaries salary_array;

BEGIN
    -- Store salaries
    v_salaries(1) := 850000;
    v_salaries(2) := 1200000;
    v_salaries(3) := 650000;
    v_salaries(4) := 1500000;
    v_salaries(5) := 950000;

    -- Display salaries
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Salary ' || i || ': ' || v_salaries(i)
        );
    END LOOP;

END;
/
