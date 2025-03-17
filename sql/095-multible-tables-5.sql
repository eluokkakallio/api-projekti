-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 095-multible-tables-5

SELECT emp.ename
        , emp.job
        , emp.deptno
        , dept.dname
FROM emp
INNER JOIN dept
    ON dept.deptno = emp.deptno
WHERE (LOWER(dept.dname) = 'accounting'
        OR
        LOWER(dept.dname) = 'sales'
        OR
        LOWER(dept.dname) = 'operations')
        AND
        emp.sal > 1000
ORDER BY emp.ename ASC
;


-- End of file
