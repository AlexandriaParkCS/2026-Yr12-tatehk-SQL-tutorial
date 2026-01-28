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
from characters;

SELECT column, AGGREGATE_FUNCTION(column)
FROM table_name
GROUP BY column;

select species, count(*) as character_count
from characters
group by species;

SELECT species, AVG(height) AS average_height
from characters
where height is not null
group by species;

select homeworld, count(*) as character_count
from characters 
group by homeworld
order by character_count desc;

alter table characters add column affiliation text;

update characters set affiliation = 'Rebel Alliance' where name in ('luke skywalker', 'Leia Organa', 'Han Solo', 'Chewbacca');

update characters set affiliation = 'Jedi Order' where name in ('Obi-Wan Kenobi', 'Yoda');

update characters set affiliation = 'Galactic Empire' where name = 'Darth Vader';

update characters set affiliation = 'Independent' where name = 'R2-D2';


select affiliation, count(*) as members
from characters
where affiliation is not null
group by affiliation
order by members desc;

select column, aggregate_function(COLUMN)
from table_name
group by COLUMN
having condition;

select species, count(*) as character_count
from characters
group by species
having count(*) >= 2;

select affiliation, count(*) as member_count
from characters
where affiliation is not null
group by affiliation
having count(*) > (select avg(cnt) from (select count(*) as cnt from characters where affiliation is not null group by affiliation));

select homeworld, count(*) as human_count
from characters
where species = 'Human'
group by homeworld 
having count(*) >= 2;

select count(distinct species) as unique_species
from characters;

select count(distinct homeworld) as unique_homeworlds
from characters;

select sum(height) as total_height
from characters;

select homeworld, count(*) as character_count
from characters
group by homeworld
order by homeworld;

select affiliation, avg(height) as avg_height
from characters
where height is not null and affiliation is not null
group by affiliation;

select homeworld, count(*) as character_count
from characters 
group by homeworld
having count(*) = 1;