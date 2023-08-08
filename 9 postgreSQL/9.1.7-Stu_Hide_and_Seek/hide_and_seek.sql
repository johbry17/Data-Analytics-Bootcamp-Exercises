/*
-- drop earlier table
DROP TABLE IF EXISTS soft;

-- create table
CREATE TABLE soft (
	rater_id int,
	reference_title varchar,
	soft_attribute varchar,
	less_than varchar,
	about_as varchar,
	more_than varchar);
*/

-- use import/export to read in csv
-- below should work, but doesn't, so use pgadmin to import/export
--COPY soft(rater_id, reference_title, soft_attribute, less_than, about_as, more_than)
--FROM 'C:\Users\johbr\Downloads\Class_1_Activities\07-Stu_Hide_and_Seek\Resources\soft-attributes.csv' 
--DELIMITER ',' 
--CSV HEADER;

SELECT * FROM soft;

-- collect all reference_title = Home Alone (1990) rows
SELECT * FROM soft WHERE reference_title = 'Home Alone (1990)';

-- collect all row where 10 < rater_id < 15
SELECT * FROM soft WHERE 10 < rater_id AND rater_id < 15;

-- collect soft_attribute = 'artsy' AND soft_attribute = 'heartfelt'
SELECT * FROM soft WHERE soft_attribute IN ('artsy', 'heartfelt');

-- Collect reference_title = 'Batman (1989)' and soft_attribute = 'scary'
SELECT * FROM soft WHERE reference_title = 'Batman (1989)' AND soft_attribute = 'scary';

-- collect reference_title = 'Home Alone (1990)' AND soft_attribute = 'artsy' AND 30 < rater_id <40
SELECT * FROM soft 
WHERE reference_title = 'Home Alone (1990)' 
AND soft_attribute = 'artsy'
AND rater_id > 30
AND rater_id < 40;