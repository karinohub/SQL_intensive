-- **Session #1**
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE ;

-- **Session #2**
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE ;

-- **Session #1**
select * from pizzeria where name  = 'Pizza Hut';

-- **Session #2**
UPDATE pizzeria set rating = 3.0 WHERE name = 'Pizza Hut';

COMMIT;

-- **Session #1**
select * from pizzeria where name  = 'Pizza Hut';

COMMIT;

select * from pizzeria where name  = 'Pizza Hut';

-- **Session #2**
select * from pizzeria where name  = 'Pizza Hut';