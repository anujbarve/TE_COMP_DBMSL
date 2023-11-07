DROP PROCEDURE IF EXISTS proc_Class;
Delimiter //

CREATE PROCEDURE proc_Class(IN new_Roll Integer)

   BEGIN
	DECLARE T_Marks INTEGER;
	DECLARE S_Name varchar(25);
	DECLARE S_result varchar(25);

	DECLARE EXIT HANDLER FOR NOT FOUND
   BEGIN
	SELECT CONCAT('ROLLNO ', new_Roll, ' NOT FOUND') as NoRecord;
   END;
	SELECT Name, Total_Marks INTO S_Name, T_Marks
	FROM Stud_Marks 
	WHERE Rollno = new_Roll;

	SET S_result = Func_Class(T_Marks);

	INSERT INTO Result values(new_Roll,S_Name,S_result);

END;
//