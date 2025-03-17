-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 094-multible-tables-4

SELECT emp.ename
        , dept.dname
FROM emp
INNER JOIN dept
    ON dept.deptno = emp.deptno
WHERE LOWER(emp.ename) LIKE '%a%'
        AND
        emp.sal > 1100
        AND
        emp.sal <= 2200
ORDER BY emp.ename ASC
;

-- End of file
