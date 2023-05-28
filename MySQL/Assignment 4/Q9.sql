
create table emp_allowance1(
empno int,
ename varchar(20),
hiredate date,
experience int,
allowance decimal(9,2));

Set Global log_bin_trust_function_creators=1;

Delimiter //
create function get_exp1(hdate date) returns int
begin
declare exp int;
set exp = floor(datediff(curdate(),hdate)/365);
return exp;
end //

Delimiter //
create procedure get_allowance()
begin
declare finish int default 0;
declare vempno,vmgr,vdeptno,exp int;
declare vename,vjob varchar(20);
declare vsal,vcomm,allow double(9,2);
declare vhiredate date;
declare emp_cur cursor for select * from emp;
declare continue handler for NOT FOUND set finish = 1;
open emp_cur;
fetch emp_cur into vempno,vename,vjob,vmgr,vhiredate,vsal,vcomm,vdeptno;
l1:loop
if finish = 1 then
leave l1;
end if;
select get_exp1(hiredate) into exp from emp where empno=vempno;
set allow = exp * 3000;
insert into emp_allowance1(empno,ename,hiredate,experience,allowance)values(vempno,vename,vhiredate,exp,allow);
end loop;
close emp_cur;
select * from emp_allowance1;
end //
delimiter ;

select * from emp_allowance;
