-- 1. Create a Customer table with a customer first name and customer last name.
CREATE TABLE customer(
	customer_id serial PRIMARY KEY,
	first_name varchar,
	last_name varchar
);

-- 2. Populate that table
-- 'Bob Smith', 'Jane Davidson', 'Jimmy Bell', and 'Stephanie Duke'
INSERT INTO customer(first_name, last_name)
VALUES
	('Bob', 'Smith'),
	('Jane', 'Davidson'),
	('Jimmy', 'Bell'),
	('Stephanie', 'Duke');

-- 3. View Table
SELECT * FROM customer;

-- 4. Create Customer Email table with a foreign key that references a field in the original `customer` table.
CREATE TABLE email(
	email_id serial PRIMARY KEY,
	customer_id serial REFERENCES customer(customer_id),
	email varchar
);

-- 5. Populate the second table
-- 'bobsmith@email.com', 'jdavids@email.com', 'jimmyb@email.com', 'sd@email.com'
INSERT INTO email (email)
VALUES
	('bobsmith@email.com'),
	('jdavids@email.com'),
	('jimmyb@email.com'),
	('sd@email.com');

-- 6. View Table
SELECT * FROM email;

-- 7. Create Customer Phone Number table with a foreign key that references a field in the original `customer` table.
CREATE TABLE phone_number(
	phone_id serial PRIMARY KEY,
	customer_id serial REFERENCES customer(customer_id),
	phone_number varchar
);

-- 8. Populate Third Table
-- '435-344-2245', '332-776-4678', '221-634-7753', '445-663-5799'
INSERT INTO phone_number (phone_number)
VALUES
	('435-344-2245'),
	('332-776-4678'),
	('221-634-7753'),
	('445-663-5799');

-- 9. View Table
SELECT * FROM phone_number;

-- To test your understanding of foreign keys, write a query to insert data in the `customer_phone` table by using a reference ID that does not exist in the `customer` table.
INSERT INTO phone_number (customer_id, phone_number)
VALUES
	(999, 111-222-3333);
	-- It breaks! Foreign Key constraint

-- Join all three tables.
SELECT
	c.first_name,
	c.last_name,
	pn.phone_number,
	e.email
FROM
	customer AS c
JOIN phone_number AS pn ON pn.customer_id = c.customer_id
JOIN email AS e ON e.customer_id = c.customer_id

