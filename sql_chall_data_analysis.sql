-- Add in the primary keys 
ALTER TABLE employees 
ADD COLUMN ID SERIAL PRIMARY KEY;
-- Add in the Foriegn Keys
ALTER TABLE child_table
DROP CONSTRAINT constraint_fkey;

ALTER TABLE child_table 
ADD CONSTRAINT constraint_name 
FOREIGN KEY (fk_columns) 
REFERENCES parent_table (parent_key_columns);
-- Queries to answer questions