-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 091-multible-tables-1

SELECT emp.ename
        , emp.deptno
        , dept.dname
FROM emp
INNER JOIN dept
        ON emp.deptno = dept.deptno

;



-- End of file
