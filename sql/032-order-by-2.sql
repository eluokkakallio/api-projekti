-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-16
-- File: 032-order-by-2

SELECT empno
        , ename
        , deptno
        , hiredate
FROM emp
WHERE empno > 7900
        OR
        empno < 7600
ORDER BY empno ASC;

-- End of file
