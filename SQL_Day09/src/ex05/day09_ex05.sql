DROP FUNCTION IF EXISTS fnc_persons_male();
DROP FUNCTION IF EXISTS fnc_persons_female();

CREATE FUNCTION fnc_persons(pgender varchar default 'female') RETURNS SETOF person AS $$
SEleCT *
    from person
        where gender = pgender
$$ LANGUAGE SQL;