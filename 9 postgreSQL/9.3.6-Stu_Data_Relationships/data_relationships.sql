/** Create a `students` table that keeps track of the following:
  * Unique ID number of each student
  * Last and first names of each student*/
CREATE TABLE students(
	student_id serial PRIMARY KEY,
	first_name,
	last_name
);

/** Create a `courses` table that keeps track of the following:
  * Unique ID number of each course
  * Name of each course*/
 CREATE TABLE courses(
 	course_id serial PRIMARY KEY,
	course_name
 );

/*Create a `student_courses_junction` that keeps track of the following:
  * All courses that have been taken by each student
  * Term in which a course was taken by a student (spring or fall)*/
 CREATE TABLE student_courses_junction(
 	id serial PRIMARY KEY,
	course_id REFERENCES courses(course_id),
	student_id REFERENCES students(student_id)
 );

-- Which data model is appropriate here: one to one, one to many, or many to many?
	-- many to many - each student can take several courses, each course has multiple students

--Note that I don't actually have the data to populate these tables
--If time allows, join and query the tables to get all data on the students.
SELECT
	s.student_id,
	s.first_name,
	s.last_name,
	c.course_id,
	c.course_name
FROM
	students AS s
JOIN student_courses_junction AS scj ON s.student_id = scj.student_id
JOIN courses AS c ON s.course_id = c.course_id;