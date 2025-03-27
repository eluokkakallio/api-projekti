
DROP TABLE IF EXISTS cleaner;
DROP TABLE IF EXISTS CLEANER;

CREATE TABLE cleaner
(
    id INTEGER NOT NULL UNIQUE
    , fname VARCHAR(80)
    , lname VARCHAR(80)
    , salgrade INTEGER NOT NULL
    , hire_date DATE

    , CONSTRAINT cleaner__id_primary_key
      PRIMARY KEY (id)
    , CONSTRAINT cleaner__salgrade_fk
      FOREIGN KEY (salgrade)
      REFERENCES salgrade(salgrade)

);

CREATE UNIQUE INDEX cleaner__id_index
    ON cleaner (id);

DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS LOCATION;

CREATE TABLE location
(
    id INTEGER NOT NULL UNIQUE
    , name VARCHAR(255)
    , address VARCHAR(255)
    , cleaning_type VARCHAR(10)

    , CONSTRAINT location__id_primary_key
      PRIMARY KEY (id)
);

CREATE UNIQUE INDEX location__id_index
        ON location (id);

DROP TABLE IF EXISTS salgrade;
DROP TABLE IF EXISTS SALGRADE;

CREATE TABLE salgrade
(
    salgrade INTEGER NOT NULL
    , sal NUMERIC (7 ,2) NOT NULL

    , CONSTRAINT salgrade__salgrade_primary_key
      PRIMARY KEY (salgrade)

);

DROP TABLE IF EXISTS schedule;
DROP TABLE IF EXISTS SCHEDULE;

CREATE TABLE schedule
(
    id NOT NULL UNIQUE
    , cleaner_id INTEGER
    , location_id    INTEGER
    , cleaning_date DATE

    , CONSTRAINT schedule__id_primary_key
      PRIMARY KEY (id)
    , CONSTRAINT schedule__cleaner_fk
        FOREIGN KEY (cleaner_id)
        REFERENCES cleaner (id)
    , CONSTRAINT schedule__location_fk
        FOREIGN KEY (location_id)
        REFERENCES location (id)

);

