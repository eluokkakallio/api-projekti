-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 103-multible-tables-and-self-join-3

SELECT employee.ename
FROM    emp AS employee
INNER JOIN emp AS manager
    ON employee.mgr = manager.empno
WHERE employee.sal > manager.sal
ORDER BY employee.ename ASC
;


-- End of file
