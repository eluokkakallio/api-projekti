-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-16
-- File: 033-order-by-3

SELECT deptno
        AS "Dept"
        , ename
        AS "Employee"
        , sal * 0.31 * 12
        AS "Taxes"
FROM emp
WHERE deptno = 10
ORDER BY "Employee" ASC
        , deptno ASC
;

-- End of file
