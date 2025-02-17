-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-16
-- File: 031-order-by-1


SELECT ename
        ,(sal * 1.15)
        AS "new salary"
FROM emp
ORDER BY "new salary" ASC
;

-- End of file
