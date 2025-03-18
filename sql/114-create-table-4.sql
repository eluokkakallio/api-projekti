-- Author: Emmi Luokkakallio <emmi.luokkakallio@tuni.fi>
-- Date: 2025-03-18
-- File: 114-create-table-4

CREATE TABLE inventory
(
    id INTEGER [NOT NULL] [UNIQUE] [PRIMARY KEY]
    , item VARCHAR(100)
    , worth DECIMAL
    , comment VARCHAR(200)

);
--Note: worth is expressed in whole numbers only.

-- End of file
