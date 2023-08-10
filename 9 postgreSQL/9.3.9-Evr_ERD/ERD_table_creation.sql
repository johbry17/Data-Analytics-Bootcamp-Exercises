-- create tables with primary and foreign keys based on schema.txt

-- gym table
CREATE TABLE gym(
	gym_id integer PRIMARY KEY,
	gym_name varchar,
	address varchar,
	city varchar,
	zipcode varchar
);

-- trainers table
CREATE TABLE trainers(
	trainer_id integer PRIMARY KEY,
	gym_id integer REFERENCES gym(gym_id),
	first_name varchar,
	last_name varchar
);

-- members table
CREATE TABLE members(
	member_id integer PRIMARY KEY,
	gym_id integer REFERENCES gym(gym_id),
	trainer_id integer REFERENCES trainers(trainer_id),
	first_name varchar,
	last_name varchar,
	address varchar,
	city varchar
);

-- payments table
CREATE TABLE payments(
	payment_id integer PRIMARY KEY,
	member_id integer REFERENCES members(member_id),
	credit_card_info integer,
	billing_zip integer
);

-- test table creation
select * from payments;