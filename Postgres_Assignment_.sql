Active: 1747420017579@@localhost@5432@postgres



-- All tables insert opearations 

INSERT INTO rangers (name, region) VALUES
('Alice Green', 'Northern Hills'),
('Bob White', 'River Delta'),
('Carol King', 'Mountain Range');

-- second tables species 
INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');


-- Third Tables


INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes) VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);


--  First Rangers Tables 

CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100)
);


SELECT * FROM rangers;


--  Second species Tables 

CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100),
    discovery_date DATE,
    conservation_status VARCHAR(50)
);



SELECT * from species;



-- Third sightings Tables 

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    species_id INT REFERENCES species(species_id),
    ranger_id INT REFERENCES rangers(ranger_id),
    sighting_time TIMESTAMP,
    location VARCHAR(100),
    notes TEXT
);

SELECT * FROM sightings;




-----------------  Poblems Solutions  -------------------------------------


-- Poblems No: 1

-- Insert a new data on the tables 

INSERT INTO rangers(name , region) VALUES(
    'Derek Fox' , 'Coastal plains'
);


-- Poblems No: 2


SELECT COUNT(DISTINCT species_id) AS  unique_species_count 
from sightings;




-- Poblems No:3

SELECT * FROM sightings
 WHERE location ILIKE '%Pass%';




-- poblems No: 4

SELECT r.name as "name" , COUNT(s.sighting_id) as "total_sightings"  from rangers as r

LEFT JOIN sightings s ON r.ranger_id = s.ranger_id

GROUP BY r.name;





-- Poblem No:5


SELECT common_name FROM species
 WHERE species_id NOT in(
    SELECT DISTINCT species_id FROM sightings 
);



-- Poblems No:6


SELECT sp.common_name, s.sighting_time, r.name
FROM sightings s
JOIN species sp USING (species_id)
JOIN rangers r USING (ranger_id)
ORDER BY s.sighting_time DESC
LIMIT 2;




-- Poblem No:7

SELECT * FROM species;

UPDATE species 
SET conservation_status = 'Historic'
WHERE discovery_date < '1800-01-01';




SELECT * FROM sightings;
-- poblem No:8


SELECT sighting_id ,
CASE 
    WHEN EXTRACT(HOUR FROM sighting_time) < 12  THEN  'Morning'
    WHEN EXTRACT(HOUR FROM sighting_time) BETWEEN 12 AND 17 THEN 'Afternoon' 
    ELSE  'Evening'
END AS time_of_day 

FROM sightings;



-- Poblem No:9



DELETE FROM rangers
WHERE ranger_id NOT IN (
  SELECT DISTINCT ranger_id FROM sightings
);



