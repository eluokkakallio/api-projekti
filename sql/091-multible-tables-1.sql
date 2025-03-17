-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 091-multible-tables-1

SELECT emp.ename
        , emp.deptno
        , dept.dname
FROM emp
INNER JOIN dept
        ON emp.deptno = dept.deptno
WHERE LOWER(dept.loc) = 'dallas'
        OR
        LOWER(emp.job) = 'salesman'
ORDER BY emp.ename ASC
;



-- End of file
