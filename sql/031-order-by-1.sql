-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-16
-- File: 031-order-by-1


SELECT ename
        , sal
        ,(sal * 1.15)
        AS "new salary"
FROM emp
WHERE mgr = 7698
ORDER BY "new salary" ASC
        , ename ASC
;

-- End of file
