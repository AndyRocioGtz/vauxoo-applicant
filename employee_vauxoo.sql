-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
                        id serial,
                        first_name varchar(50),
                        last_name varchar(50),
                        PRIMARY KEY (id)
);

CREATE TABLE employee_department (
                        id serial,
                        name varchar(50),
                        description varchar(50),
                        PRIMARY KEY (id)
);

ALTER TABLE employee
  ADD COLUMN id_department integer;
ALTER TABLE employee
  ADD FOREIGN KEY (id_department) REFERENCES employee_department (id);

INSERT INTO employee_department(name, description)
    VALUES ('RH', 'Recursos Humanos'),
           ('Ventas', 'Ventas'),
           ('Administrativo', 'contable'),
           ('TI', 'Infraestructuram'),
           ('Sistemas', 'Desarrollo'),
           ('Fabricacion', 'Manufacturas')
;

INSERT INTO employee(first_name, last_name, id_department)
        VALUES ('Laura', 'Estrada', 1),
                   ('Felipe', 'Millan', 5),
                   ('Christian', 'Gutierrez', 4),
                   ('Fabian', 'Vallejo', 1)
;

CREATE TABLE employee_hobby (
                        id serial,
                        name varchar(40),
                        description varchar(50),
                        PRIMARY KEY (id)
);
--Relacion empleado - hobby
CREATE TABLE hobby_employee (
                        id_employee int,
                        id_hobby int,
                        PRIMARY KEY (id_employee, id_hobby),
                        FOREIGN KEY (id_employee) REFERENCES employee_department (id),
                        FOREIGN KEY (id_hobby) REFERENCES employee_department (id)
);
--Insert Hobby
INSERT INTO employee_hobby(name, description)
    VALUES ('Natacion', 'Ejercicio sano'),
           ('Leer', 'Aprendizaje, relajacion'),
           ('Cine', 'Emocionanteg')
;;
--Insert Hobby - Employee
INSERT INTO hobby_employee(id_employee, id_hobby)
    VALUES (1, 1),
                   (1, 3),
                   (2, 1),
                   (2, 2),
                   (2, 3),
                   (3, 2),
                   (4, 1),
                   (4, 3)
;