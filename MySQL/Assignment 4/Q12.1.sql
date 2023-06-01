create table empsec(
empno int,
ename varchar(20),
action varchar(20),
oldsal double(9,2),
newsal double(9,2),
uname varchar(20),
act_date date
);

Delimiter //
create trigger emp_ud before update on emp 
for each row
Begin
Insert into empsec values(Old.empno, Old.ename, 'update', Old.sal, New.sal, user(), curdate());
End //
Delimiter ;

