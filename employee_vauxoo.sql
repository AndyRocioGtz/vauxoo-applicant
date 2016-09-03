-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
						id_employee int, 
						first_name varchar(50), 
						last_name varchar(50), 
						id_departament int,
						id_rango int
);

CREATE TABLE employee_department (
						id_dept int,
						name varchar(50), 
						description varchar(50)
);
alter table employee add constraint fk_id_employee_departament 
foreign key(id_dept) references employee_departament(id_dept) 
on delete cascade on update cascade;

CREATE TABLE employee_hobby (
						id_hobby int, 
						name varchar(40), 
						description varchar(50)
);

CREATE TABLE hobby_employee (
						id_employee int,
						id_hobby int
);

CREATE TABLE range(
						id_rango int, 
						description varchar(40)
);
alter table employee add constraint fk_id_rango foreign key(id_rango) 
references rango(id_rango) on delete cascade on update cascade;
-- ...
