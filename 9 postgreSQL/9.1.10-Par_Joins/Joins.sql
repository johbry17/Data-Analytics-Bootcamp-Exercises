SELECT
	bb.band,
	bb.event_date,
	bb.species_name,
	age.age_description,
	sex.sex_description
FROM bird_bands AS bb
JOIN age ON bb.age_code = age.age_code
JOIN sex ON bb.sex_code = sex.sex_code
LIMIT 10;

SELECT
	bb.band,
	bb.event_date,
	bb.species_name,
	band_type.band_type_description,
	bird_status.bird_status_description,
	age.age_description,
	sex.sex_description
FROM bird_bands AS bb
JOIN band_type ON bb.band_type_code = band_type.band_type_code
JOIN bird_status ON bb.bird_status = bird_status.bird_status
JOIN age ON bb.age_code = age.age_code
JOIN sex ON bb.sex_code = sex.sex_code
WHERE sex.sex_code != 0
LIMIT 10;