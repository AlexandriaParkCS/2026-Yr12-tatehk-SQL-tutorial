-- database: ../runtime/db/starwars.db
-- Practical 6: Table Joins
-- Student Name: [Your Name]
-- Date: [Today's Date]
--
-- This script demonstrates INNER and LEFT joins


SELECT
characters.name AS character_name,
characters.species,
planets.name AS homeworld_name,
planets.climate
FROM characters
INNER JOIN planets ON characters.homeworld_id = planets.id;

SELECT
c.name AS character_name,
c.species,
p.name AS planet_name,
p.climate,
p.population
FROM characters c
INNER JOIN planets p ON c.homeworld_id = p.id;


SELECT
c.name AS character_name,
v.name AS vehicle_name,
v.vehicle_class
FROM characters c
INNER JOIN character_vehicles cv ON c.id = cv.character_id
INNER JOIN vehicles v ON cv.vehicle_id = v.id
ORDER BY c.name;

SELECT
c.name,
c.species,
p.name AS homeworld
FROM characters c
INNER JOIN planets p ON c.homeworld_id = p.id
WHERE c.species = 'Human';


SELECT
p.name AS planet_name,
COUNT(c.id) AS character_count
FROM planets p
INNER JOIN characters c ON p.id = c.homeworld_id
GROUP BY p.name
ORDER BY character_count DESC;

SELECT columns
FROM table1
LEFT JOIN table2 ON table1.column = table2.column;

SELECT
c.name AS character_name,
v.name AS vehicle_name
FROM characters c
LEFT JOIN character_vehicles cv ON c.id = cv.character_id
LEFT JOIN vehicles v ON cv.vehicle_id = v.id
ORDER BY c.name;


SELECT
c.name AS character_name,
c.species
FROM characters c
LEFT JOIN character_vehicles cv ON c.id = cv.character_id
WHERE cv.vehicle_id IS NULL;


SELECT
v.name AS vehicle_name,
v.vehicle_class
FROM vehicles v
LEFT JOIN character_vehicles cv ON v.id = cv.vehicle_id
WHERE cv.character_id IS NULL;

SELECT
p.name AS planet_name,
COUNT(c.id) AS character_count
FROM planets p
LEFT JOIN characters c ON p.id = c.homeworld_id
GROUP BY p.name
ORDER BY character_count DESC;

SELECT
c.name AS character_name,
v.name AS vehicle_name,
v.vehicle_class
FROM characters c
INNER JOIN character_vehicles cv ON c.id = cv.character_id
INNER JOIN vehicles v ON cv.vehicle_id = v.id
WHERE c.species = 'Human' AND v.vehicle_class = 'Starfighter';

SELECT
c.name AS character_name,
COUNT(v.id) AS vehicle_count
FROM characters c
INNER JOIN character_vehicles cv ON c.id = cv.character_id
INNER JOIN vehicles v ON cv.vehicle_id = v.id
GROUP BY c.name
HAVING COUNT(v.id) > 1;

SELECT
c.name AS character,
c.species,
p.name AS homeworld,
p.climate,
COUNT(v.id) AS vehicles_piloted
FROM characters c
LEFT JOIN planets p ON c.homeworld_id = p.id
LEFT JOIN character_vehicles cv ON c.id = cv.character_id
LEFT JOIN vehicles v ON cv.vehicle_id = v.id
GROUP BY c.name, c.species, p.name, p.climate
ORDER BY c.name;