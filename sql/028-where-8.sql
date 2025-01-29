-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 028-where-8.sql

SELECT ename
        , sal
        , comm
FROM emp
WHERE comm IS NOT NULL
        AND
        comm <> 0
;

-- End of file
