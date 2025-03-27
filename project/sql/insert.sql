
INSERT INTO cleaner
(id, lname, fname, salgrade, hire_date)
VALUES
(1, "Magia", "Milla", 1, '2024-01-01')
;

INSERT INTO cleaner
(id, lname, fname, salgrade, hire_date)
VALUES
(2, "Joulu", "Muori", 4, '1996-12-24')
;

INSERT INTO cleaner
(id, lname, fname, salgrade, hire_date)
VALUES
(3, "Posteljooni", "Pate", 5, '2020-02-02')
;

INSERT INTO cleaner
(id, lname, fname, salgrade, hire_date)
VALUES
(4, "Puuha", "Pete", 2, "2000-08-01")
;

INSERT INTO cleaner
(id, lname, fname, salgrade, hire_date)
VALUES
(5, "Poppanen", "Maija", 5, "1998-04-23")
;


INSERT INTO location
( id, name, address,cleaning_type)
VALUES
(1, "TAMK", "Kuntokatu 3", "basic")
;

INSERT INTO location
( id, name, address,cleaning_type)
VALUES
(2, "Joulupukin tehdas", "Korvatunturi 123", "full")
;

INSERT INTO location
( id, name, address,cleaning_type)
VALUES
(3, "Netum", "Åkerlundin katu 5", "basic")
;

INSERT INTO location
( id, name, address,cleaning_type)
VALUES
(4, "koti", "Vaarinmaantie 3", "full")
;

INSERT INTO location
( id, name, address,cleaning_type)
VALUES
(5, "muutosiivous", "Tammerkoskentie 63", "special")
;

INSERT INTO salgrade
(salgrade, sal)
VALUES
(1, 1600)
;

INSERT INTO salgrade
(salgrade, sal)
VALUES
(2, 1700)
;

INSERT INTO salgrade
(salgrade, sal)
VALUES
(3, 1900)
;

INSERT INTO salgrade
(salgrade, sal)
VALUES
(4, 2200)
;

INSERT INTO salgrade
(salgrade, sal)
VALUES
(5, 2600)
;


INSERT INTO schedule
(id, cleaner_id, location_id, cleaning_date)
VALUES
(1, 2, 2, "2025-12-26")
;

INSERT INTO schedule
(id, cleaner_id, location_id, cleaning_date)
VALUES
(2, 4, 1, "2025-03-31")
;

INSERT INTO schedule
(id, cleaner_id, location_id, cleaning_date)
VALUES
(3, 4, 3, "2025-03-28")
;

INSERT INTO schedule
(id, cleaner_id, location_id, cleaning_date)
VALUES
(4, 1, 5, "2025-03-12")
;

INSERT INTO schedule
(id, cleaner_id, location_id, cleaning_date)
VALUES
(5, 5, 1, "2025-03-12")
;

