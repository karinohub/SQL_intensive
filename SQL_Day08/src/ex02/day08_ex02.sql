-- **Session #1**
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- **Session #2**
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- **Session #1**
select * from pizzeria where name  = 'Pizza Hut';

-- **Session #2**
select * from pizzeria where name  = 'Pizza Hut';

-- **Session #1**
UPDATE pizzeria set rating = 4 WHERE name = 'Pizza Hut';

-- **Session #2**
UPDATE pizzeria set rating = 3.6 WHERE name = 'Pizza Hut';

-- **Session #1**
COMMIT;

-- **Session #2**
COMMIT;

-- **Session #1**
select * from pizzeria where name  = 'Pizza Hut';

-- **Session #2**
select * from pizzeria where name  = 'Pizza Hut';