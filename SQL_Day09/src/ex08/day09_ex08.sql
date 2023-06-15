CREATE FUNCTION fnc_fibonacci(pstop INT DEFAULT 10) RETURNS INT[] AS
$$
DECLARE
    arr int[];
    x INT := 0;
    y INT := 1;

BEGIN
    arr = arr || 0;
    WHILE  y < pstop
        LOOP
        arr = arr || y;
            y := x + y;
            x := y - x;
        END LOOP;
return arr;

END;
$$ LANGUAGE plpgsql;


select * from fnc_fibonacci(100);
select * from fnc_fibonacci();