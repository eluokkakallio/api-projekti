-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 023-where-3.sql

SELECT ename
        , sal
FROM emp
WHERE sal NOT BETWEEN 1500 AND 2850
;


-- End of file
