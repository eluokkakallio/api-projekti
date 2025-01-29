-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-01-23
-- File: 012-correct-sql-statement.sql

-- 1. lisätään pilkku ename jälkeen
-- 2. muutetaan x --> *
-- 3. lisätään FROM
-- 4. lisätään as annaual salaryn yhteyteeen
-- 5. lisätään hipsut annual salary yhteyteen
-- 6. muokataan salary vastaamaan tietokannan mukaista --> sal

SELECT  empno
        , ename
        , sal * 12 "ANNUAL SALARY"
FROM emp
;


-- End of file
