-- database: ../runtime/db/starwars.db
-- Practical 1: Datbases and Tables
-- Student Name: [Tate]
-- Date: [16/12/225]
--
-- This script creates the Star Wars characters database

-- create the characters table

SELECT count(*) from characters;

select count (height) from characters;

select min(height) from characters;
select max(height) from characters;

select avg(height) from characters;

select sum(height) from characters;

SELECT
    count(*) as total_characters,
    avg(height) as average_height,
    max(height) as tallest,
    min(height) as shortest
from characters

select species count(*) as character_count
from characters
group by species;

