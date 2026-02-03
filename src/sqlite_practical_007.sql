-- database: ../runtime/db/starwars.db
-- Practical 7: Updating and Deleting Data
-- Student Name: [Your Name]
-- Date: [Today's Date]
--
-- This script demonstrates UPDATE and DELETE operations
--
-- WARNING: Always use WHERE with UPDATE and DELETE!

SELECT id, name, affiliation FROM characters WHERE name = 'R2-D2';
-- Update R2-D2's affiliation
UPDATE characters
SET affiliation = 'Rebel Alliance'
WHERE name = 'R2-D2';
-- Verify the change
SELECT id, name, affiliation FROM characters WHERE name = 'R2-D2';

-- Update multiple columns at once
UPDATE characters
SET species = 'Human (Cyborg)',
affiliation = 'Galactic Empire'
WHERE name = 'Darth Vader';
-- Verify
SELECT name, species, affiliation FROM characters WHERE name = 'Darth
Vader';


UPDATE characters
SET affiliation = 'No Affiliation'
WHERE species = 'Droid';
-- Check how many were updated
SELECT name, species, affiliation FROM characters WHERE species = 'Droid';

UPDATE characters
SET height = height + 5
WHERE height IS NOT NULL;
-- View updated heights
SELECT name, height FROM characters ORDER BY height;


UPDATE characters
SET affiliation = CASE
WHEN species = 'Droid' THEN 'No Affiliation'
WHEN species = 'Wookiee' THEN 'Rebel Alliance'
WHEN species LIKE '%Jedi%' OR name LIKE '%Obi-Wan%' THEN 'Jedi Order'
ELSE affiliation
END;

SELECT name, species, affiliation FROM characters ORDER BY species;

-- DANGEROUS! Deletes EVERYTHING:
DELETE FROM characters;
-- SAFE: Deletes specific row:
DELETE FROM characters WHERE id = 99;

SELECT * FROM characters WHERE name = 'Test Character';
-- Delete the record
DELETE FROM characters
WHERE name = 'Test Character';
-- Verify it's gone
SELECT COUNT(*) FROM characters;

INSERT INTO characters (name, species, homeworld) VALUES ('Temporary',
'Test', 'Nowhere');
-- Verify it exists
SELECT * FROM characters WHERE name = 'Temporary';
DELETE FROM characters
WHERE name = 'Temporary' AND species = 'Test';
-- Confirm deletion
SELECT * FROM characters WHERE name = 'Temporary';

DELETE FROM characters
WHERE homeworld_id IN (SELECT id FROM planets WHERE name = 'Unknown');


