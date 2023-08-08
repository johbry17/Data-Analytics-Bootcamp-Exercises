/*
-- create empty table
CREATE TABLE cities(
	city varchar(255),
	state varchar(255),
	population integer
);

-- insert data into table
INSERT INTO cities (city, state, population)
VALUES ('Alameda', 'California', 79177),
('Mesa', 'Arizona', 496401),
('Boerne', 'Texas', 16056),
('Anaheim', 'California', 352497),
('Tucson', 'Arizona', 535677),
('Garland', 'Texas', 238002);
*/

-- print all
SELECT * FROM cities;

-- print city names only
SELECT city FROM cities;

-- print only cities in Arizona
SELECT city FROM cities WHERE state = 'Arizona';

-- print only cities with population < 100,000
SELECT city FROM cities WHERE population < 100000;

-- print only cities in California with population < 100,000
SELECT city FROM cities WHERE population < 100000 AND state = 'California';
