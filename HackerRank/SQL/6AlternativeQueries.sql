-- 1 Draw The Triangle 1
SET @nbLines = 21;
SELECT REPEAT('* ', @nbLines := @nbLines - 1) FROM information_schema.tables LIMIT 20;

-- 2 Draw The Triangle 2
SET @line = 0;
SELECT REPEAT('* ', @line := @line + 1) FROM information_schema.tables LIMIT 20;

-- 3 Print Prime Numbers
