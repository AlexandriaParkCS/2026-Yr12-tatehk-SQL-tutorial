-- database: ../runtime/db/starwars.db
-- Practical 1: Datbases and Tables
-- Student Name: [Tate]
-- Date: [16/12/225]
--
-- This script creates the Star Wars characters database

-- create the characters table

CREATE TABLE IF NOT EXISTS characters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    species TEXT,
    homeworld TEXT
);


INSERT INTO characters (name, species, homeworld) VALUES
    ('luke skywalker', 'human', 'tatooine'),
    ('Leia Organa', 'Human', 'Alderaan'),
    ('Han Solo', 'Human', 'Corellia'),
    ('Chewbacca', 'Wookiee', 'Kashyyyk'),
    ('Obi-Wan Kenobi', 'Human', 'Stewjon'),
    ('Darth Vader', 'Human', 'Tatooine'),
    ('Yoda', 'Yoda''s species', 'Unknown'),
    ('R2-D2', 'Droid', 'Naboo');

SELECT * FROM characters;
