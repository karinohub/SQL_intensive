CREATE FUNCTION func_minimum(VARIADIC arr float[]) RETURNS float AS $$
DECLARE
  x float;
min float := $1[1];

BEGIN
  FOREACH x  IN ARRAY $1
  LOOP
 if(x <min) then min=x;
 end if;
  END LOOP;
return min;
END;
$$ LANGUAGE plpgsql;

SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.4, 5.0, 4.4]);