-- DROP DATABASE address_book;
-- CREATE DATABASE address_book;

CREATE TABLE contacts
(
  first VARCHAR(255),
  last VARCHAR(25),
  age INT,
  gender CHAR(1),
  dtgd BOOLEAN,
  phone VARCHAR(12)
);

$ psql -d address_book -f contacts.sql