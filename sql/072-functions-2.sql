-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 072-functions-2

SELECT LOWER(ename)
        AS "Name"
        , LENGTH(ename)
        AS "Characters"
FROM emp
ORDER BY "Characters" ASC, ename ASC
;


-- End of file
