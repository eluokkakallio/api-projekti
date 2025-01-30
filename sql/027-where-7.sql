-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 027-where-7.sql

SELECT ename
        , job
        , sal
FROM emp
WHERE (UPPER(job) = 'CLERK'
        OR
        UPPER(job) = 'ANALYST')
        AND
        sal NOT IN (1000, 5000)
;

-- End of file
