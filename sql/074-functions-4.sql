-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 074-functions-4

SELECT ename
        , CASE WHEN ename LIKE 'a%'
            OR
                    ename LIKE 'm%'
            OR
                    ename LIKE 'j%'
                        THEN LOWER(job)
                ELSE job
        END
        AS "job"
FROM emp
ORDER BY ename ASC, job ASC
;




-- End of file
