-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 101-multible-tables-and-self-join-1

SELECT manager.ename AS "Manager"
        , manager.empno AS "Mgr#"
        , employee.ename AS "Employee"
        , employee.empno AS "Emp#"

FROM    emp AS 'employee'
INNER JOIN emp AS 'manager'
    ON employee.mgr = manager.empno
WHERE LOWER(manager.ename) = "blake"
    OR
    LOWER(manager.ename) = "ford"
    OR
    LOWER(manager.ename) = "scott"
ORDER BY manager.ename ASC
        , employee.ename ASC
;


-- End of file
