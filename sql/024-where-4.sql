-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 024-where-4.sql

SELECT ename
        , job
        , hiredate
FROM emp
WHERE hiredate BETWEEN '1981-02-20' AND '1981-05-01'
;


-- End of file
