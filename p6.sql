create table student(
    `rollno` int(10),
    `name` varchar(50)
);
insert into student values(1,"Anuj");
create table nstudent(
    `rollno` int(10),
    `name` varchar(50)
);


DELIMITER //

CREATE PROCEDURE merge_Data(IN newrollno INTEGER)

BEGIN
    DECLARE sroll INTEGER;
    DECLARE rowcount INTEGER DEFAULT 0;

    DECLARE terminate BOOLEAN DEFAULT FALSE;

    DECLARE studdetail CURSOR FOR 
    SELECT rollno FROM student WHERE rollno = newrollno;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET terminate = TRUE;
    
    OPEN studdetail;

    getStud: LOOP
       FETCH studdetail INTO sroll;
       IF NOT EXISTS (SELECT * FROM nstudent WHERE rollno = sroll) Then
	 INSERT INTO nstudent SELECT * FROM student WHERE rollno=sroll;
         SET rowcount = rowcount + 1;
       END IF;

       IF terminate = TRUE THEN
           LEAVE getStud;
       END IF;
       
    END LOOP getStud;
    CLOSE studdetail;
    SELECT CONCAT('RECORDS MERGED,',rowcount,' row(s) affected') AS Message;
END//
DELIMITER ;