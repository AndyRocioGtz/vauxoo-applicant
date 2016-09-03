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

