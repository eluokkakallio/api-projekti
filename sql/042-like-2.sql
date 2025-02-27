-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 042-like-2

SELECT ename
        AS "Name"
        , deptno
        AS "Department"
FROM emp
WHERE (LOWER(ename) LIKE '_a%'
        OR
        LOWER(ename) LIKE '_e%'
        OR
        LOWER(ename) LIKE '_i%'
        OR
        LOWER(ename) LIKE '_o%'
        OR
        LOWER(ename) LIKE '_u%'
        OR
        LOWER(ename) LIKE '_y%')
        AND
        (job = 'SALESMAN'
        OR
        job = 'ANALYST')
ORDER BY deptno ASC
        , ename ASC
;

-- End of file
