-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 061-coalesce-1

SELECT deptno
        , ename
        , COALESCE(comm, 0)
        AS "comm"
FROM emp
WHERE deptno = 30
ORDER BY ename ASC, comm ASC
;


-- End of file
