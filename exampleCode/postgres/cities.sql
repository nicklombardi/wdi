-- DROP DATABASE atlas;
-- CREATE DATABASE atlas;

CREATE TABLE cities
(
  city VARCHAR(255),
  state VARCHAR(25),
  temp INT,
  population BIGINT
);

-- $ psql -d address_book -f cities.sql

INSERT INTO cities (city, state, temp, population) VALUES ('chicago', 'illinois', 78, 2700000000);
