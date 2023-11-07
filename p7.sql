Delimiter //

CREATE TRIGGER before_insert_Instructor BEFORE INSERT 
   ON Instructor FOR EACH ROW  
   BEGIN  
      IF NEW.Salary < 0 THEN SET NEW.Salary = 0;  
      END IF;  
   END //  

CREATE TRIGGER after_insert_Instructor AFTER INSERT 
   ON Instructor FOR EACH ROW  
   BEGIN  
      Insert into Inst_ID Values(NEW.i_id);  
   END //  

CREATE TRIGGER before_Update_Instructor BEFORE UPDATE 
   ON Instructor FOR EACH ROW  
   BEGIN  
      IF NEW.Salary < 0 THEN SET NEW.Salary = 0;  
      END IF;  
   END //  

CREATE TRIGGER after_update_Instructor AFTER INSERT 
   ON Instructor FOR EACH ROW  
   BEGIN  
      Insert into Inst_ID Values(NEW.i_id);  
   END //  
Delimiter ;