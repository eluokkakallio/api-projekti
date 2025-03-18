-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-03-18
-- File: 112-create-table-2

CREATE TABLE football
(
    id VARCHAR(80) [NOT NULL] [UNIQUE] [PRIMARY KEY]
    , first VARCHAR(80)
    , last VARCHAR(80)
    , team VARCHAR(80)
    , comment VARCHAR(80)
);


-- End of file
