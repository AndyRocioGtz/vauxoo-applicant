-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
						id_employee int, 
						first_name varchar(50), 
						last_name varchar(50), 
						id_departament int
);

CREATE TABLE employee_department (
						id_dept int,
						name varchar(50), 
						description varchar(50)
);

CREATE TABLE employee_hobby (
						id_hobby int, 
						name varchar(40), 
						description varchar(50)
);

CREATE TABLE hobby_employee (
						id_employee int,
						id_hobby int
);

-- ...
