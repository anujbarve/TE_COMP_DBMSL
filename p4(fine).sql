create procedure BookFine(roll_new integer,book_name varchar(30))

begin
declare X integer;

DECLARE CONTINUE HANDLER FOR NOT FOUND
begin
select CONCAT('ROLLNO', roll_new, ' NOT FOUND') as NoRecord;
end;

select datediff(curdate(),DateofIssue) into X from Borrower where Rollno=roll_new;

if (X>15 && X<30) then
insert into Fine values(roll_new,curdate(),(X*5));
end if;

if (X>30) then
insert into Fine values(roll_new,curdate(),(X*50));
end if;

update Borrower set status='R' where Rollno=roll_new;

end;
//