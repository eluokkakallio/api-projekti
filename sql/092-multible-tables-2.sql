-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 092-multible-tables-2

SELECT DISTINCT emp.job
FROM emp
INNER JOIN dept
    ON emp.deptno = dept.deptno
WHERE LOWER(dept.loc) = 'boston'
        OR
        LOWER(dept.loc) = 'new york'
ORDER BY emp.job ASC
;
-- End of file
