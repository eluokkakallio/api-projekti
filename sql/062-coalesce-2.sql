-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 062-coalesce-2

SELECT ename
        AS "Name"
        , COALESCE(comm, 0) - (COALESCE(comm, 0) * 0.20)
             + (sal - sal * 0.31)
        AS "Net Income"
        , (COALESCE(comm, 0) * 0.20) + (COALESCE(sal, 0) * 0.31)
        AS "Tax"
FROM emp
ORDER BY "Net Income" ASC
;




-- End of file
