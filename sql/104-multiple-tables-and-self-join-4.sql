-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 104-multible-tables-and-self-join-4

SELECT dept.loc AS "Location"
        , dept.dname AS "Department"
        , employee.ename AS "Employee"
        , manager.ename AS "Manager"

FROM    emp AS employee
INNER JOIN emp AS manager
    ON employee.mgr = manager.empno
INNER JOIN dept
    ON employee.deptno = dept.deptno
INNER JOIN salgrade
    ON manager.sal BETWEEN salgrade.losal AND salgrade.hisal
WHERE salgrade.grade = 3
        OR salgrade.grade = 4
        OR salgrade.grade = 5
ORDER BY dept.loc ASC
        , manager.ename ASC
        , employee.ename ASC
;


-- End of file
