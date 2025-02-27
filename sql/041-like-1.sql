-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-02-27
-- File: 041-like-1

SELECT *
FROM emp
WHERE LOWER(ename) LIKE '__a&'
;

-- End of file
