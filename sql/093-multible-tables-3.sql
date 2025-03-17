-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-28
-- File: 093-multible-tables-3

SELECT e.ename
        , d.dname
        , d.loc
FROM emp AS e
INNER JOIN dept AS d
    ON e.deptno = d.deptno
WHERE e.comm IS NOT NULL
        AND
        e.comm <> 0
ORDER BY e.ename ASC
;



-- End of file
