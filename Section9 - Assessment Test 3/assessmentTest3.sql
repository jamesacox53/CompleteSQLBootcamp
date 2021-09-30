/* Question 1 */

CREATE TABLE IF NOT EXISTS students (
student_id SERIAL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL, 
homeroom_number INTEGER, 
phone VARCHAR(15) NOT NULL UNIQUE,
email VARCHAR(40) UNIQUE CHECK(email ILIKE '%@%'),
graduation_year DATE
);

/* Question 2 */

CREATE TABLE IF NOT EXISTS department (
department_id SERIAL PRIMARY KEY,
department VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS teachers (
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL, 
homeroom_number INTEGER,
department INTEGER REFERENCES department(department_id) NOT NULL,	
phone VARCHAR(15) NOT NULL UNIQUE,
email VARCHAR(40) UNIQUE CHECK(email ILIKE '%@%')
);

/* Question 3 */

INSERT INTO students(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES ('Mark', 'Watney', 5, '777-555-1234', '2035-10-01');

/* Question 4 */

INSERT INTO department(department)
VALUES ('Biology');

INSERT INTO teachers(first_name, last_name, homeroom_number, department, phone, email)
VALUES ('Jonas', 'Salk', 5, 1, '777-555-4321', 'jsalk@school.org');