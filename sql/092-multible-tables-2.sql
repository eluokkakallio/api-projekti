-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 092-multible-tables-2

SELECT dept.loc
        , emp.job
FROM emp
INNER JOIN dept
    ON emp.deptno = dept.deptno
ORDER BY emp.job ASC
;
-- End of file
