-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-03-18
-- File: 111-create-table-1

CREATE TABLE football
(
    id VARCHAR(80) [NOT NULL] [UNIQUE] [PRIMARY KEY]
    , first VARCHAR(80)
    , last VARCHAR(80)
    , team VARCHAR(80)
    , comment VARCHAR(80)
);

-- End of file
