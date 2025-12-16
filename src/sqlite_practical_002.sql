-- database: ../runtime/db/starwars.db
-- Practical 1: Datbases and Tables
-- Student Name: [Tate]
-- Date: [16/12/225]
--
-- This script creates the Star Wars characters database

-- create the characters table

SELECT * FROM characters;

SELECT name, species FROM characters;

SELECT homeworld, name, species FROM characters;

SELECT columns FROM characters WHERE species = 'Human';

SELECT name, homeworld FROM characters WHERE homeworld = 'Tatooine';

SELECT name, species FROM characters WHERE species != 'Human';

SELECT name, species, homeworld
FROM characters
WHERE species = 'Human' AND homeworld = 'Tatooine';

SELECT name, species, homeworld
FROM characters
WHERE species = 'Droid' OR homeworld = 'Naboo';


SELECT name, species, homeworld
FROM characters
WHERE species = 'Human' AND (homeworld = 'Tatooine' OR homeworld =
'Alderaan');

SELECT name FROM characters WHERE name LIKE 'L%';

SELECT name FROM characters WHERE name LIKE '%o';
SELECT name FROM characters WHERE name LIKE '%Darth%';

SELECT DISTINCT species FROM characters WHERE species LIKE '%oid%';

SELECT name, homeworld FROM characters WHERE homeworld = 'Kashyyyk';

SELECT name, species FROM characters WHERE species != 'Droid';

SELECT name, species, homeworld
FROM characters
WHERE species = 'Human' AND homeworld != 'Tatooine';

SELECT name FROM characters WHERE name LIKE '%Sky%';