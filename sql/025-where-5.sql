-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 025-where-5.sql

SELECT ename
        , deptno
FROM emp
WHERE deptno = 10
        OR
        deptno = 30
;


-- End of file
