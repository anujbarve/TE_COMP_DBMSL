-- run p5b.sql before this code

-- create table studmarks(
-- 	`name` varchar(50), 
-- 	`total_marks` int(10)
-- ); 
-- insert into studmarks values ("Anuj",100);
-- create table result(
-- 	`roll` int(10),
-- 	`name` varchar(50), 
-- 	`class` varchar(50)
-- );
-- call procclass(1);
-- select * from result;

Delimiter //

CREATE PROCEDURE procclass(IN newroll Integer)

   BEGIN
	DECLARE tmarks INTEGER;
	DECLARE sname varchar(25);
	DECLARE sresult varchar(25);

	DECLARE EXIT HANDLER FOR NOT FOUND
   BEGIN
	SELECT CONCAT('ROLLNO ', newroll, ' NOT FOUND') as NoRecord;
   END;
	SELECT Name, total_marks INTO sname, tmarks
	FROM studmarks 
	WHERE roll = newroll;

	SET sresult = funcclass(tmarks);

	INSERT INTO result values(newroll,sname,sresult);

END;
//

delimiter ;