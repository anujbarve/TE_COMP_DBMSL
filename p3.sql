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

CREATE TABLE marks(
    `m_id` varchar(50),
    `id` int(10),
    `marks` int(10),
    `subject` varchar(50)
);

INSERT INTO marks(m_id,id,marks,subject) VALUES (1,1,90,"DSA");
INSERT INTO marks(m_id,id,marks,subject) VALUES (2,2,95,"DSA");
INSERT INTO marks(m_id,id,marks,subject) VALUES (3,3,57,"DSA");
INSERT INTO marks(m_id,id,marks,subject) VALUES (4,4,98,"DSA");
INSERT INTO marks(m_id,id,marks,subject) VALUES (5,5,69,"DSA");
INSERT INTO marks(m_id,id,marks,subject) VALUES (6,6,80,"DSA");

SELECT * FROM students LEFT JOIN marks ON students.id = marks.id;

SELECT * FROM students RIGHT JOIN marks ON students.id = marks.id;


