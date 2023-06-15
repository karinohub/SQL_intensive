-- **Session #1**
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED ;

-- **Session #2**
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED ;

-- **Session #1**
SELECT SUM(RATING) FROM pizzeria;

-- **Session #2**
UPDATE pizzeria set rating = 1 WHERE name = 'Pizza Hut';

COMMIT;

-- **Session #1**
SELECT SUM(RATING) FROM pizzeria;

COMMIT;

SELECT SUM(RATING) FROM pizzeria;

-- **Session #2**
SELECT SUM(RATING) FROM pizzeria;