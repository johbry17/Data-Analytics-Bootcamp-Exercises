-- Drop table if exists
DROP TABLE IF EXISTS road_accidents;

DROP TABLE IF EXISTS accidents_by_state;

-- Create new tables to import data
CREATE TABLE road_accidents (
	_id	INT PRIMARY KEY,
	Year INT,
	Registered_Vehicles	INT,
	Population INT,
	Road_Crashes INT,
	Road_Deaths INT,
	Serious_Injury INT,
	Slight_Injury INT,
	Index_per_10000_Vehicles DEC,
	Index_per_100000_Population DEC,	
	Index_per_billion_VKT DEC
);

CREATE TABLE accidents_by_state (
	Year INT,
	MYS_State VARCHAR,
	Road_Crashes INT,
	Road_Deaths INT,
	Serious_Injury INT,
	Slight_Injury INT
);

-- Import data from mys_road_accidents.csv
INSERT INTO road_accidents VALUES 
    (1, 1997, 8550469, 21769300, 215632, 6302, 14105, 36167, 7.37036, 28.94902, 33.57000),
    (2, 1998, 9141357, 22333500, 211037, 5740, 12068, 37896, 6.27916, 25.70130, 28.75000),
    (3, 1999, 9929951, 22909500, 223166, 5794, 10366, 36777, 5.83487, 25.29082, 26.79000),
    (4, 2000, 10598804, 23494900, 250429, 6035, 9790, 34375, 5.69404, 25.68643, 26.25000),
    (5, 2001, 11302545, 24030500, 265175, 5849, 8680, 35944, 5.17494, 24.33990, 23.93000),
    (6, 2002, 12068144, 24542500, 279711, 5891, 8425, 35236, 4.88145, 24.00326, 22.71000),
    (7, 2003, 12819248, 25038100, 298653, 6286, 9040, 37415, 4.90356, 25.10574, 22.77000),
    (8, 2004, 13764837, 25541500, 326815, 6228, 9218, 38645, 4.52457, 24.38385, 21.10000),
    (9, 2005, 14733585, 26045500, 328264, 6200, 9395, 31417, 4.20807, 23.80450, 19.58000),
    (10, 2006, 15790732, 26549900, 341252, 6287, 9253, 19885, 3.98145, 23.67994, 18.69000),
    (11, 2007, 16813943, 27058400, 363319, 6282, 9273, 18444, 3.73618, 23.21645, 17.60000),
    (12, 2008, 17733084, 27567600, 373071, 6527, 8868, 16879, 3.68069, 23.67634, 17.65000),
    (13, 2009, 18933237, 28081500, 397330, 6745, 8849, 15823, 3.56252, 24.01937, 17.27000),
    (14, 2010, 20006953, 28588600, 414421, 6872, 7781, 13616, 3.43481, 24.03755, 16.21000),
    (15, 2011, 21311630, 29062000, 449040, 6877, 6328, 12365, 3.22688, 23.66320, 14.68000),
    (16, 2012, 22590123, 29510000, 462423, 6917, 5868, 11654, 3.06196, 23.43951, 13.35000),
    (17, 2013, 23434640, 30213700, 477204, 6915, 4597, 8388, 2.95076, 22.88697, 12.19000),
    (18, 2014, 25101192, 30708500, 476196, 6674, 4432, 8598, 2.65884, 21.73340, 10.64000),
    (19, 2015, 26301952, 31186100, 489606, 6706, 4120, 7432, 2.54962, 21.50317, 9.60000),
    (20, 2016, 27638067, 31633500, 521466, 7152, 4506, 7415, 2.58774, 22.60894, 10.70000),
    (21, 2017, 28738194, 32049700, 0, 6740, 0, 0, 2.34531, 21.02984, 9.59000);

-- View the table to ensure all data has been imported correctly
SELECT * FROM road_accidents;

-- Import data from mys_accidents_by_state.csv
INSERT INTO accidents_by_state VALUES 
    (2017, 'PERLIS', 1925, 62, 115, 256),
    (2017, 'KEDAH', 23262, 560, 204, 666),
    (2017, 'PERAK', 38587, 711, 449, 569),
    (2017, 'PULAU PINANG', 43007, 401, 182, 130),
    (2017, 'SELANGOR', 154958, 1087, 281, 178),
    (2017, 'KUALA LUMPUR', 72940, 236, 81, 809),
    (2017, 'N/SEMBILAN', 24941, 370, 286, 703),
    (2017, 'MELAKA', 18771, 230, 89, 55),
    (2017, 'JOHOR', 76121, 1067, 287, 476),
    (2017, 'PAHANG', 20813, 485, 197, 226),
    (2017, 'KELANTAN', 10786, 442, 251, 1277),
    (2017, 'TERENGGANU', 10713, 330, 136, 307),
    (2017, 'SABAH', 17244, 351, 473, 486),
    (2017, 'SARAWAK', 19807, 408, 279, 401),
    (2018, 'PERLIS', 2093, 64, 48, 241),
    (2018, 'KEDAH', 23239, 509, 218, 579),
    (2018, 'PERAK', 38278, 693, 435, 571),
    (2018, 'PULAU PINANG', 45734, 390, 136, 85),
    (2018, 'SELANGOR', 163078, 1046, 280, 215),
    (2018, 'KUALA LUMPUR', 72284, 229, 84, 368),
    (2018, 'N/SEMBILAN', 25123, 362, 223, 573),
    (2018, 'MELAKA', 19120, 191, 110, 56),
    (2018, 'JOHOR', 78812, 977, 242, 332),
    (2018, 'PAHANG', 20641, 485, 167, 163),
    (2018, 'KELANTAN', 10983, 420, 240, 1386),
    (2018, 'TERENGGANU', 10607, 275, 149, 236),
    (2018, 'SABAH', 18006, 310, 366, 329),
    (2018, 'SARAWAK', 20600, 333, 266, 243),
    (2019, 'PERLIS', 2098, 76, 18, 198),
    (2019, 'KEDAH', 24867, 446, 220, 779),
    (2019, 'PERAK', 39720, 667, 465, 595),
    (2019, 'PULAU PINANG', 47198, 392, 110, 42),
    (2019, 'SELANGOR', 168222, 1054, 369, 455),
    (2019, 'KUALA LUMPUR', 73771, 209, 51, 316),
    (2019, 'N/SEMBILAN', 25838, 337, 325, 651),
    (2019, 'MELAKA', 19593, 217, 82, 107),
    (2019, 'JOHOR', 82502, 1040, 264, 305),
    (2019, 'PAHANG', 21196, 454, 181, 232),
    (2019, 'KELANTAN', 11295, 338, 193, 1282),
    (2019, 'TERENGGANU', 11355, 277, 172, 285),
    (2019, 'SABAH', 18520, 291, 359, 307),
    (2019, 'SARAWAK', 21341, 369, 213, 301),
    (2020, 'PERLIS', 1615, 46, 9, 190),
    (2020, 'KEDAH', 19651, 354, 153, 1010),
    (2020, 'PERAK', 30669, 491, 387, 1516),
    (2020, 'PULAU PINANG', 35234, 287, 87, 157),
    (2020, 'SELANGOR', 123230, 805, 413, 1973),
    (2020, 'KUALA LUMPUR', 50215, 163, 37, 219),
    (2020, 'N/SEMBILAN', 19905, 235, 479, 1086),
    (2020, 'MELAKA', 14543, 151, 119, 116),
    (2020, 'JOHOR', 58207, 697, 335, 703),
    (2020, 'PAHANG', 17000, 356, 127, 322),
    (2020, 'KELANTAN', 9752, 276, 233, 1659),
    (2020, 'TERENGGANU', 9152, 238, 167, 217),
    (2020, 'SABAH', 12906, 220, 160, 225),
    (2020, 'SARAWAK', 16158, 315, 134, 369),
    (2021, 'PERLIS', 905, 20, 10, 86),
    (2021, 'KEDAH', 10632, 231, 102, 720),
    (2021, 'PERAK', 15590, 331, 150, 1031),
    (2021, 'PULAU PINANG', 18166, 189, 53, 250),
    (2021, 'SELANGOR', 60370, 436, 312, 967),
    (2021, 'KUALA LUMPUR', 22037, 101, 27, 142),
    (2021, 'N/SEMBILAN', 9611, 154, 220, 506),
    (2021, 'MELAKA', 7130, 75, 74, 112),
    (2021, 'JOHOR', 28157, 372, 179, 334),
    (2021, 'PAHANG', 8071, 176, 129, 189),
    (2021, 'KELANTAN', 4403, 133, 102, 803),
    (2021, 'TERENGGANU', 4539, 106, 80, 89),
    (2021, 'SABAH', 7159, 118, 106, 122),
    (2021, 'SARAWAK', 7883, 156, 86, 224);
	
-- View the table to ensure all data has been imported correctly
SELECT * FROM accidents_by_state;

-- find the row where road_crashes = 0
SELECT * FROM road_accidents WHERE road_crashes = 0;
-- year	2017, registered_vehicles 28738194, population 32049700, road_crashes, 0, road_deaths 6740, serious_injury 0, slight_injury 0, index_per_10000_vehicles 2.34531, index_per_100000_population 21.02984, index_per_billion_vkt 9.59000

-- delete all rows for years that do not have data missing from 'road_accidents'
DELETE FROM accidents_by_state WHERE Year NOT IN (SELECT Year FROM road_accidents);

-- in a single query, in accidents_by_state, 
-- COUNT the three columns with missing data (road_crashes, serious_injury, slight_injury)
-- COUNT road_deaths
-- rename summed columns with original column name using 'AS'
SELECT
	SUM(road_crashes) AS total_road_crashes,
	SUM(serious_injury) AS total_serious_injury,
	SUM(slight_injury) AS total_slight_injury,
	SUM(road_deaths) AS total_road_deaths
FROM accidents_by_state;

-- update road_accidents with SUMS
UPDATE road_accidents
SET
	road_crashes = (SELECT SUM(road_crashes) FROM accidents_by_state),
	serious_injury = (SELECT SUM(serious_injury) FROM accidents_by_state),
	slight_injury = (SELECT SUM(slight_injury) FROM accidents_by_state),
	road_deaths = (SELECT SUM(road_deaths) FROM accidents_by_state)
WHERE Year = 2017;

-- delete all rows from accidents_by_state
DELETE FROM accidents_by_state;

-- re-Import data from mys_accidents_by_state.csv
INSERT INTO accidents_by_state VALUES 
    (2017, 'PERLIS', 1925, 62, 115, 256),
    (2017, 'KEDAH', 23262, 560, 204, 666),
    (2017, 'PERAK', 38587, 711, 449, 569),
    (2017, 'PULAU PINANG', 43007, 401, 182, 130),
    (2017, 'SELANGOR', 154958, 1087, 281, 178),
    (2017, 'KUALA LUMPUR', 72940, 236, 81, 809),
    (2017, 'N/SEMBILAN', 24941, 370, 286, 703),
    (2017, 'MELAKA', 18771, 230, 89, 55),
    (2017, 'JOHOR', 76121, 1067, 287, 476),
    (2017, 'PAHANG', 20813, 485, 197, 226),
    (2017, 'KELANTAN', 10786, 442, 251, 1277),
    (2017, 'TERENGGANU', 10713, 330, 136, 307),
    (2017, 'SABAH', 17244, 351, 473, 486),
    (2017, 'SARAWAK', 19807, 408, 279, 401),
    (2018, 'PERLIS', 2093, 64, 48, 241),
    (2018, 'KEDAH', 23239, 509, 218, 579),
    (2018, 'PERAK', 38278, 693, 435, 571),
    (2018, 'PULAU PINANG', 45734, 390, 136, 85),
    (2018, 'SELANGOR', 163078, 1046, 280, 215),
    (2018, 'KUALA LUMPUR', 72284, 229, 84, 368),
    (2018, 'N/SEMBILAN', 25123, 362, 223, 573),
    (2018, 'MELAKA', 19120, 191, 110, 56),
    (2018, 'JOHOR', 78812, 977, 242, 332),
    (2018, 'PAHANG', 20641, 485, 167, 163),
    (2018, 'KELANTAN', 10983, 420, 240, 1386),
    (2018, 'TERENGGANU', 10607, 275, 149, 236),
    (2018, 'SABAH', 18006, 310, 366, 329),
    (2018, 'SARAWAK', 20600, 333, 266, 243),
    (2019, 'PERLIS', 2098, 76, 18, 198),
    (2019, 'KEDAH', 24867, 446, 220, 779),
    (2019, 'PERAK', 39720, 667, 465, 595),
    (2019, 'PULAU PINANG', 47198, 392, 110, 42),
    (2019, 'SELANGOR', 168222, 1054, 369, 455),
    (2019, 'KUALA LUMPUR', 73771, 209, 51, 316),
    (2019, 'N/SEMBILAN', 25838, 337, 325, 651),
    (2019, 'MELAKA', 19593, 217, 82, 107),
    (2019, 'JOHOR', 82502, 1040, 264, 305),
    (2019, 'PAHANG', 21196, 454, 181, 232),
    (2019, 'KELANTAN', 11295, 338, 193, 1282),
    (2019, 'TERENGGANU', 11355, 277, 172, 285),
    (2019, 'SABAH', 18520, 291, 359, 307),
    (2019, 'SARAWAK', 21341, 369, 213, 301),
    (2020, 'PERLIS', 1615, 46, 9, 190),
    (2020, 'KEDAH', 19651, 354, 153, 1010),
    (2020, 'PERAK', 30669, 491, 387, 1516),
    (2020, 'PULAU PINANG', 35234, 287, 87, 157),
    (2020, 'SELANGOR', 123230, 805, 413, 1973),
    (2020, 'KUALA LUMPUR', 50215, 163, 37, 219),
    (2020, 'N/SEMBILAN', 19905, 235, 479, 1086),
    (2020, 'MELAKA', 14543, 151, 119, 116),
    (2020, 'JOHOR', 58207, 697, 335, 703),
    (2020, 'PAHANG', 17000, 356, 127, 322),
    (2020, 'KELANTAN', 9752, 276, 233, 1659),
    (2020, 'TERENGGANU', 9152, 238, 167, 217),
    (2020, 'SABAH', 12906, 220, 160, 225),
    (2020, 'SARAWAK', 16158, 315, 134, 369),
    (2021, 'PERLIS', 905, 20, 10, 86),
    (2021, 'KEDAH', 10632, 231, 102, 720),
    (2021, 'PERAK', 15590, 331, 150, 1031),
    (2021, 'PULAU PINANG', 18166, 189, 53, 250),
    (2021, 'SELANGOR', 60370, 436, 312, 967),
    (2021, 'KUALA LUMPUR', 22037, 101, 27, 142),
    (2021, 'N/SEMBILAN', 9611, 154, 220, 506),
    (2021, 'MELAKA', 7130, 75, 74, 112),
    (2021, 'JOHOR', 28157, 372, 179, 334),
    (2021, 'PAHANG', 8071, 176, 129, 189),
    (2021, 'KELANTAN', 4403, 133, 102, 803),
    (2021, 'TERENGGANU', 4539, 106, 80, 89),
    (2021, 'SABAH', 7159, 118, 106, 122),
    (2021, 'SARAWAK', 7883, 156, 86, 224);

/*
-- SUM road_crashes, serious_injury, slight_injury for another year
-- add with year to road_accidents
-- need Primary Key _id
UPDATE road_accidents
SET
	--_id = 22,
	road_crashes = (SELECT SUM(road_crashes) FROM accidents_by_state WHERE Year = 2018),
	serious_injury = (SELECT SUM(serious_injury) FROM accidents_by_state WHERE Year = 2018),
	slight_injury = (SELECT SUM(slight_injury) FROM accidents_by_state WHERE Year = 2018),
	road_deaths = (SELECT SUM(road_deaths) FROM accidents_by_state WHERE Year = 2018)
WHERE Year = 2018;
*/
INSERT INTO road_accidents (_id, Year, road_crashes, serious_injury, slight_injury, road_deaths)
SELECT
	(SELECT MAX(_id) + 1 FROM road_accidents),
	2018,
	SUM(road_crashes),
	SUM(serious_injury),
	SUM(slight_injury),
	SUM(road_deaths)
FROM accidents_by_state
WHERE Year = 2018;

INSERT INTO road_accidents (_id, Year, road_crashes, serious_injury, slight_injury, road_deaths)
SELECT
	(SELECT MAX(_id) + 1 FROM road_accidents),
	2019,
	SUM(road_crashes),
	SUM(serious_injury),
	SUM(slight_injury),
	SUM(road_deaths)
FROM accidents_by_state
WHERE Year = 2019;

INSERT INTO road_accidents (_id, Year, road_crashes, serious_injury, slight_injury, road_deaths)
SELECT
	(SELECT MAX(_id) + 1 FROM road_accidents),
	2020,
	SUM(road_crashes),
	SUM(serious_injury),
	SUM(slight_injury),
	SUM(road_deaths)
FROM accidents_by_state
WHERE Year = 2020;

INSERT INTO road_accidents (_id, Year, road_crashes, serious_injury, slight_injury, road_deaths)
SELECT
	(SELECT MAX(_id) + 1 FROM road_accidents),
	2021,
	SUM(road_crashes),
	SUM(serious_injury),
	SUM(slight_injury),
	SUM(road_deaths)
FROM accidents_by_state
WHERE Year = 2021;

SELECT * FROM road_accidents;