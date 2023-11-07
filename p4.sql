
-- create table borrower(
--     `rollno` int(10), 
--     `name` varchar(255), 
--     `dateofissue` date, 
--     `nameofbook` varchar(255), 
--     `status` varchar(10)
-- );
-- insert into borrower values(2,"Aditya","2023-10-01","DSA","I");
-- create table fine(
--     `rollno` int(10),
--     `date` date,
--     `amt` int(10)
-- );
-- call BookFine("2","DSA");

delimiter //
create procedure BookFine(roll_new integer,book_name varchar(30))

begin
declare X integer;

DECLARE CONTINUE HANDLER FOR NOT FOUND
begin
select CONCAT('ROLLNO', roll_new, ' NOT FOUND') as NoRecord;
end;

select datediff(curdate(),DateofIssue) into X from borrower where rollno=roll_new;

if (X>15 && X<30) then
insert into fine values(roll_new,curdate(),(X*5));
end if;

if (X>30) then
insert into fine values(roll_new,curdate(),(X*50));
end if;

update borrower set status='R' where rollno=roll_new;

end;
//

delimiter ;