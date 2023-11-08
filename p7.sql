Delimiter //

CREATE TRIGGER before_insert_Instructor BEFORE INSERT 
   ON instructor FOR EACH ROW  
   BEGIN  
      IF NEW.salary < 0 THEN SET NEW.salary = 0;  
      END IF;  
   END //  

CREATE TRIGGER after_insert_instructor AFTER INSERT 
   ON instructor FOR EACH ROW  
   BEGIN  
      Insert into instid Values(NEW.i_id);  
   END //  

CREATE TRIGGER before_Update_instructor BEFORE UPDATE 
   ON instructor FOR EACH ROW  
   BEGIN  
      IF NEW.salary < 0 THEN SET NEW.salary = 0;  
      END IF;  
   END //  

CREATE TRIGGER after_update_instructor AFTER INSERT 
   ON instructor FOR EACH ROW  
   BEGIN  
      Insert into instid Values(NEW.i_id);  
   END //  
Delimiter ;