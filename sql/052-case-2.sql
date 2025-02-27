-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 052-case-2

SELECT ename
        , CASE WHEN deptno = 30
                    AND
                    comm IS NULL
                        THEN 100
                WHEN deptno = 30
                    THEN comm * 1.05
                ELSE comm
            END
        AS "comm"
FROM emp
ORDER BY comm ASC, ename ASC
;


-- End of file
