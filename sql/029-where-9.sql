-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 029-where-9.sql

SELECT ename
        , job
FROM emp
WHERE mgr IS NULL
;

-- End of file
