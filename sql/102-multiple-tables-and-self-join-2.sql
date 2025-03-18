-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 102-multible-tables-and-self-join-2

SELECT employee.deptno AS "Dept"
        ,employee.ename AS "Employee"
        , colleague.ename AS "Colleague"
FROM    emp AS employee
INNER JOIN emp AS colleague
    ON employee.deptno= colleague.deptno
WHERE employee.deptno = colleague.deptno
        AND
        employee.empno <> colleague.empno
ORDER BY dept ASC,
        employee.ename ASC
        , colleague.ename ASC
;



-- End of file
