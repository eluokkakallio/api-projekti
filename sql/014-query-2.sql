-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-28
-- File: 014-query-2.sql

SELECT  ename
        , sal*3
        AS "first quarter"
FROM    emp
;

-- End of file
