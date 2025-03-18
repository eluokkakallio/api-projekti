-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-03-18
-- File: 111-create-table-1

CREATE TABLE person
(
    id INTEGER [NOT NULL] [UNIQUE] [PRIMARY KEY]
    , last VARCHAR(80)
    , first VARCHAR(80)
    , phone VARCHAR(80)
    , zip VARCHAR(80)
    , city VARCHAR(80)
    , address VARCHAR(200)
    -- Note: suppose phone numbers can
    -- contain only "+" and spaces
    -- Exmples: +358 50 12 34 55 66
);


-- End of file
