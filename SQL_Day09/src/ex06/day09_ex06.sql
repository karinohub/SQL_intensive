CREATE FUNCTION fnc_person_visits_and_eats_on_date(pperson VARCHAR DEFAULT 'Dmitriy', pprice INTEGER DEFAULT 500,
                                                   pdate DATE DEFAULT '2022-01-8')
    RETURNS TABLE
            (
                name VARCHAR
            )
AS
$$
BEGIN
    RETURN QUERY SELECT DISTINCT pizzeria.name
                   FROM pizzeria
                            JOIN person_visits ON pizzeria.id = person_visits.pizzeria_id
                            JOIN person ON person.id = person_visits.person_id
                            JOIN menu ON pizzeria.id = menu.pizzeria_id
                  WHERE person_visits.visit_date = pdate
                    AND menu.price < pprice
                    AND person.name = pperson;
END;
$$ LANGUAGE plpgsql;



select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');