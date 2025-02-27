-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 071-functions-1

SELECT LOWER(ename)
        AS "Name"
        , LOWER(job)
        AS "Job"
        , sal
        AS "Salary"
FROM emp
ORDER BY ename ASC, job ASC
;


-- End of file
