-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 051-case-1

SELECT ename
        AS "Name"
        , CASE WHEN UPPER(job) = 'SALESMAN'
                    THEN 'SALES PERSON'
                ELSE job
            END
        AS "New Job Name"
FROM emp
ORDER BY job ASC
        , ename ASC
;



-- End of file
