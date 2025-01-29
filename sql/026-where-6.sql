-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 026-where-6.sql

SELECT ename
        AS "Employee"
        , sal
        AS "Monthly Salary"
FROM emp
WHERE sal > 1500
        AND
        deptno = 10
        OR
        deptno = 30
;

-- End of file
