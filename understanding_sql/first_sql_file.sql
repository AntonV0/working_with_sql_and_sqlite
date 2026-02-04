-- Double dash for single line comment
 
-- ! This command lists all the databases in the SQL server:
-- SHOW DATABASES;

-- ! To create database:
-- CREATE DATABASE employee_data;

-- ! To delete a database:
-- DROP DATABASE database_name;

-- ----------------------------------------------------------------------

-- ! Employee database columns:
-- employee_data
-- id
-- first_name
-- last_name
-- email
-- phone_number
-- hire_date
-- job_id
-- salary
-- department_id

-- ! Department database columns:
-- department_id
-- department_name

-- ----------------------------------------------------------------------

-- ! Creating a table:

-- -- Department Table
-- CREATE TABLE departments(
--   department_id INT AUTO_INCREMENT PRIMARY KEY,
--   department_name VARCHAR(30) NOT NULL
-- );

-- -- Employee Table
-- CREATE TABLE employees(
--   employee_id INT AUTO_INCREMENT PRIMARY KEY,
--   first_name VARCHAR(30) DEFAULT NULL,
--   last_name VARCHAR(30) NOT NULL,
--   email VARCHAR(100),
--   phone_number VARCHAR(20) NOT NULL,
--   hire_date DATE,
--   salary DECIMAL(10, 2) NOT NULL,
--   department_id INT,
--   FOREIGN KEY (department_id) REFERENCES departments(department_id) ON DELETE CASCADE ON UPDATE CASCADE
-- );

-- ! Populating a table:
-- INSERT INTO departments(department_id, department_name) VALUES(1, "IT");

-- ! To insert multiple rows of data:
-- INSERT INTO departments(department_id, department_name) VALUES(2, "HR"), (3, "Sales"), (4, "Marketing");

-- ! Method 2 - Auto Increment (No need to specify department_id):
-- INSERT INTO departments(department_name) VALUES("Finance");

-- ! Inserting data into employees table:
-- INSERT INTO employees(employee_id, first_name, last_name, email, phone_number, hire_date, salary, department_id) VALUES(1, "John", "Doe", "john@gmail.com", "123-456-7890", "2023-01-15", 60000.56, 1);

-- ! Altering a table - Adding, modifying, deleting (dropping), renaming columns:
-- ALTER TABLE employees ADD COLUMN age INT NOT NULL;

-- ! Seeing the structure of a table in VS Code terminal:
-- Can be pasted from MySQL Workbench by clicking the table in Schemas section
-- SELECT * FROM employee_data.employees;

-- ! Now John Doe's age is 0 by default since age column is set to NOT NULL

-- ! Updatating a single value in a table:
-- UPDATE employees SET age=30 WHERE employee_id=1;

-- ! Deleting data from a table:
-- ALTER TABLE employees DROP COLUMN age;
