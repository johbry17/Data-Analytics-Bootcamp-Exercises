DROP TABLE IF EXISTS programming_languages;

CREATE TABLE programming_languages(
	id integer,
	language varchar(255),
	rating integer
);

INSERT INTO programming_languages (id, language, rating)
VALUES (1, 'HTML', 95),
    (2, 'JS', 99),
    (3, 'JQuery', 98),
    (4, 'MySQL', 70),
    (5, 'MySQL', 70);


-- print out MySQL values
SELECT id FROM programming_languages WHERE language = 'MySQL';

-- delete a duplicate
DELETE FROM programming_languages
WHERE id = (
	SELECT id
	FROM programming_languages
	WHERE language = 'MySQL'
	LIMIT 1);

-- insert a few more rows with language and rating
INSERT INTO programming_languages (id, language, rating)
VALUES
	(6, 'Python', 100),
	(7, 'VBA', 0),
	(8, 'C', 90);

-- change JS to JavaScript
UPDATE programming_languages
SET language = 'JavaScript'
WHERE language = 'JS';

-- change HTML rating to 90
UPDATE programming_languages
SET rating = '90'
WHERE language = 'HTML';

-- add a boolean column named expert with default value of True
ALTER TABLE programming_languages
ADD COLUMN expert boolean DEFAULT true;

SELECT * FROM programming_languages