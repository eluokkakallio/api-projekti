-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-03-18
-- File: 112-create-table-2

CREATE table weather
(
    id INTEGER [NOT NULL] [UNIQUE] [PRIMARY KEY]
    , time_of_reading TIMESTAMP
    , high DECIMAL
    , low DECIMAL
    , sig VARCHAR(2)
    , comment VARCHAR(200)
);

-- End of file
