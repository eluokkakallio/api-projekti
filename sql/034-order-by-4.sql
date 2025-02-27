-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-16
-- File: 034-order-by-4

SELECT ename
        AS "Employee"
        , sal
        AS "Monthly Salary"
        , sal * 1.10
        AS "Sal 10%"
        , comm
        AS "Comm"
FROM emp
WHERE comm > 'Monthly Salary'
ORDER BY ename ASC
        , sal ASC
        , comm ASC
;

-- End of file
