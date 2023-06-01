create table empaudit1(
empno int,
ename varchar(20),
username varchar(20),
chdate date,
action varchar(20)
);

Delimiter //
create trigger emp_audit1 after insert on emp
for each row
Begin
Insert into empaudit1 values(New.empno,New.ename,user(),curdate(),'insert');
End //
Delimiter ;

Delimiter //
create trigger emp_audit2 after delete on emp
for each row
Begin
Insert into empaudit1 values(Old.empno,Old.ename,user(),curdate(),'delete');
End //
Delimiter ;
