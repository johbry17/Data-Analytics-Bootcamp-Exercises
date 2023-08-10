/*
drop table if exists pets;
DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS pet_names;
*/

-- create table pets
CREATE TABLE pets (
	ID serial PRIMARY KEY,
	Owner varchar,
	Pet varchar,
	Type varchar,
	Service varchar
);

-- populate using "Import/Export" using 1NF normalized csv 'pets_normalized.csv'

-- create a table for owners that takes an ID and the owner's name.
CREATE TABLE owners (
	owner_id serial PRIMARY KEY,
	owner_name varchar
);

-- Create a table for pet names that takes two IDs, the pet's name, and the pet's type.
CREATE TABLE pet_names(
	name_id serial PRIMARY KEY,
	pet_id integer REFERENCES pets(id),
	name varchar,
	type varchar
);

-- populate owners
INSERT INTO owners (owner_name)
VALUES
	('Wei'),
	('Dzigbode'),
	('Akmal'),
	('Carly'),
	('Mikayla'),
	('Frederick');

-- populate pet_names
INSERT INTO pet_names (pet_id, name, type)
VALUES
	(1, 'Bao', 'Dog'),
	(2, 'Lian', 'Dog'),
    (3, 'Nini', 'Dog'),
    (4, 'Bastet', 'Cat'),
    (5, 'Nala', 'Cat'),
    (6, 'Thumper', 'Rabbit'),
    (7, 'Cooper', 'Dog'),
    (8, 'Marshmallow', 'Rabbit');
	
-- Create a `service` table that displays the different types of services that are offered.
CREATE TABLE service(
	service_id serial PRIMARY KEY,
	service_type varchar
);

-- populate the table
INSERT INTO service (service_type)
VALUES
	('Bath'),
	('Walk'),
	('Litter Change'),
	('Feed');
	
-- Create a `pet_names_updated` table that takes an ID that will connect to the `services` table.
CREATE TABLE pet_names_updated(
	name_updated_id serial PRIMARY KEY,
	pet_id integer REFERENCES pets(id),
	owner_id integer REFERENCES owners(owner_id),
	service_id integer REFERENCES service(service_id),
	name varchar,
	type varchar
);	

-- populate the table
INSERT INTO pet_names_updated (pet_id, owner_id, service_id, name, type)
VALUES
	(1, 1, 1, 'Bao', 'Dog'),
	(2, 1, 1, 'Lian', 'Dog'),
    (3, 2, 2, 'Nini', 'Dog'),
    (4, 3, 3, 'Bastet', 'Cat'),
    (5, 4, 3, 'Nala', 'Cat'),
    (6, 5, 4, 'Thumper', 'Rabbit'),
    (7, 6, 2, 'Cooper', 'Dog'),
    (8, 6, 4, 'Marshmallow', 'Rabbit');
	

-- Join all three tables.
SELECT
	o.owner_name,
	pnu.name,
	pnu.type,
	s.service_type
FROM 
	pet_names_updated AS pnu
JOIN service AS s ON s.service_id = pnu.service_id
JOIN owners o ON pnu.owner_id = o.owner_id;

