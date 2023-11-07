drop function if exists fun_class;

delimiter $
create function fun_class(s_marks INTEGER) 
returns varchar(20) no sql
begin

declare result varchar(20);
if (s_marks>=75 and s_marks<=100 ) then
	set result = 'distinction';
elseif (s_marks>=65 and s_marks<=74) then
	set result = 'first class';
elseif (s_marks>=55 and s_marks<=64) then
	set result = 'second class';
else
	set result = 'passed';
end if;
	return result;

end$

delimiter ;