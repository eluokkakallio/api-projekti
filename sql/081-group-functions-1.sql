-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 081-group-functions-1

SELECT COUNT(*)
        AS "count of managers"
FROM emp
WHERE LOWER(job) IN ('manager', 'president')
;

-- End of file
