-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 073-functions-3

SELECT empno
        , ename
        , ROUND(COALESCE(sal, 0) * 1.15)
        AS "new salary"
        , ROUND((COALESCE(sal, 0) * 1.15) - sal)
        AS "increase"
FROM emp
ORDER BY ename ASC, "new salary" ASC
;




-- End of file
