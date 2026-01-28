-- database: ../runtime/db/starwars.db
-- Practical 1: Datbases and Tables
-- Student Name: [Tate]
-- Date: [16/12/225]
--
-- This script creates the Star Wars characters database

-- create the characters table

ALTER TABLE characters ADD COLUMN height INTEGER;

UPDATE characters SET height = 172 WHERE name = 'luke skywalker';
UPDATE characters SET height = 150 WHERE name = 'Leia Organa';
UPDATE characters SET height = 180 WHERE name = 'Han Solo';
UPDATE characters SET height = 228 WHERE name = 'Chewbacca';
UPDATE characters SET height = 182 WHERE name = 'Obi-Wan Kenobi';
UPDATE characters SET height = 202 WHERE name = 'Darth Vader';
UPDATE characters SET height = 66 WHERE name = 'Yoda';
UPDATE characters SET height = 96 WHERE name = 'R2-D2';

SELECT name, species homeworld FROM characters ORDER BY name;

SELECT name, species FROM characters ORDER BY species;

SELECT name, height FROM characters ORDER by height;

SELECT name, height FROM characters ORDER by height asc;

SELECT name, height FROM characters ORDER by height desc;

SELECT name from characters order by name desc;

SELECT name, species, homeworld
from characters
order by species, name;

select name, species, height
from characters
order by species asc, height desc;  

select homeworld, species, name
from characters
order by homeworld, species;


select name from characters limit 5;

select name, height
from characters
order by height desc
limit 1;

select name, height
from characters
order by height asc
limit 3;

select name from characters order by name limit 5 offset 3;

select name from characters order by name limit 3 offset 0;


select name from characters order by name limit 3 offset 3;

select name from characters order by name limit 3 offset 6;

select name, species, height
from characters
where species = 'Human'
order by height desc
limit 1;

select name, homeworld
from characters
where homeworld != "Tatooine"
order by name 
limit 3;

select name, height
from characters
order by height desc
limit 5;

select distinct species 
from characters
order by species;

select name, species, height
from characters
where species = 'Human'
order by height asc;

select name, height 
from characters
order by height desc
limit 2 offset 1;
