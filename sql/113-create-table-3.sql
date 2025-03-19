-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-03-18
-- File: 113-create-table-3

DROP TABLE IF EXISTS weather;
CREATE TABLE weather
(
    id INTEGER [NOT NULL] [UNIQUE] [PRIMARY KEY]
    , time_of_reading TIMESTAMP
    , high DECIMAL
    , low DECIMAL
    , sig VARCHAR(80)
    , comment VARCHAR(200)
);

--Note: temperatures in format: -10.5 or 30.8

-- End of file
