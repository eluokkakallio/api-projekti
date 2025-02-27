-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 062-coalesce-2

SELECT ename
        AS "Name"
        , COALESCE(comm, 0) + sal
        AS "Net income"
        , (COALESCE(comm, 0) * 0.20) + (sal * 0.31)
        AS "Tax"
FROM emp
ORDER BY "Net income" ASC
;




-- End of file
