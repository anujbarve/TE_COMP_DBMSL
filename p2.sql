CREATE DATABASE university;

USE university;

CREATE TABLE students(
    `id` int(10),
    `name` varchar(50),
    `class` varchar(50),
    `grade` varchar(10),
    `division` varchar(10)
);

INSERT INTO students(id,name,class,grade,division) VALUES (1,"Anuj","TE-COMP","A","B");
INSERT INTO students(id,name,class,grade,division) VALUES (2,"Aditya","TE-COMP","B","B");
INSERT INTO students(id,name,class,grade,division) VALUES (3,"Raghav","TE-COMP","C","B");
INSERT INTO students(id,name,class,grade,division) VALUES (4,"Anushman","TE-COMP","A","A");
INSERT INTO students(id,name,class,grade,division) VALUES (5,"Aditi","TE-COMP","A","B");
INSERT INTO students(id,name,class,grade,division) VALUES (6,"Sakshi","TE-COMP","C","A");
INSERT INTO students(id,name,class,grade,division) VALUES (7,"Neha","TE-COMP","A","B");
INSERT INTO students(id,name,class,grade,division) VALUES (8,"Janhavi","TE-COMP","A","A");
INSERT INTO students(id,name,class,grade,division) VALUES (9,"Mohit","TE-COMP","D","B");
INSERT INTO students(id,name,class,grade,division) VALUES (10,"Chaitanya","TE-COMP","A","B");

SELECT * FROM students;

SELECT name,class FROM students;

UPDATE students SET name = "Malya" WHERE id = 9;

DELETE FROM students WHERE id = 9;

CREATE VIEW stud_view_b AS SELECT * FROM students WHERE division = "B";

SELECT * FROM stud_view_b;

ALTER VIEW stud_view_b AS SELECT id,name,grade FROM students;

UPDATE stud_view_b SET name = "Chintu" WHERE id = 10;

DROP VIEW stud_view_b;