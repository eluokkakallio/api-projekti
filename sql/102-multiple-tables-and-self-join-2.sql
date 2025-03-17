-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 102-multible-tables-and-self-join-2

SELECT employee.ename AS "Employee"
        ,employee.deptno AS "Dept"
        , colleague.ename AS "Colleagues"

FROM    emp AS employee
INNER JOIN emp AS colleague
    ON employee.empno = colleague.empno
WHERE employee.deptno = colleague.deptno
ORDER BY dept DESC,
        employee.ename ASC
        , colleague.ename ASC
;



-- End of file
