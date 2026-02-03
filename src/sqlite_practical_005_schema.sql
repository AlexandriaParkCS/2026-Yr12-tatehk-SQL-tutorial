-- database: ../runtime/db/starwars.db
-- Practical 5: Multiple Tables and Relationships (Schema)
-- Student Name: [tate]
-- Date: [28/1/26]
--
-- This script creates related tables with foreign keys

CREATE TABLE IF NOT EXISTS planets (id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL UNIQUE,
climate TEXT,
terrain TEXT,
population INTEGER
);

CREATE TABLE IF NOT EXISTS vehicles (
id INTEGER PRIMARY KEY AUTOINCREMENT,
name TEXT NOT NULL,
model TEXT,
vehicle_class TEXT,
manufacturer TEXT
);

CREATE TABLE IF NOT EXISTS character_vehicles (
character_id INTEGER NOT NULL,
vehicle_id INTEGER NOT NULL,
PRIMARY KEY (character_id, vehicle_id),
FOREIGN KEY (character_id) REFERENCES characters(id),
FOREIGN KEY (vehicle_id) REFERENCES vehicles(id)
);

ALTER TABLE characters ADD COLUMN homeworld_id INTEGER;