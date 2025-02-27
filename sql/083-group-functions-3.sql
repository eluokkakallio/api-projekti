-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 081-group-functions-1

SELECT MIN(sal)
        AS "low"
        , MAX(sal)
        AS "high"
FROM emp
WHERE deptno = 10
        OR
        deptno = 30

;

-- End of file
