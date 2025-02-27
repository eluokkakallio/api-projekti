-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 043-like-3

SELECT ename
FROM emp
WHERE LOWER(ename) LIKE '%l%l%'
        AND
        (deptno = 10
        OR
        mgr = 7782)
;



-- End of file
