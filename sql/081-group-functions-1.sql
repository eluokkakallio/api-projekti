-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 081-group-functions-1

SELECT job
        , COUNT(mgr)
        AS "count of managers"
FROM emp
GROUP BY job
;

-- End of file
