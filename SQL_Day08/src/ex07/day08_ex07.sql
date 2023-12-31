-- **Session #1**
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- **Session #2**
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;

-- **Session #1**
UPDATE person set age = 17 WHERE id = 1;
-- **Session #2**
UPDATE person set age = 22 WHERE id = 2;

-- **Session #1**
UPDATE person set age = 23 WHERE id = 2;
-- **Session #2**
UPDATE person set age = 18 WHERE id = 1;

-- **Session #1**
COMMIT;
-- **Session #2**
COMMIT;