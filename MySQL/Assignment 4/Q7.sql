
Delimiter //
create procedure disp_avg1()
Begin
Declare finish int default 0;
Declare status varchar(20);
Declare average double(9,2);
Declare vempno,vmgr,vdeptno int;
Declare vename,vjob varchar(20);
Declare vhiredate date;
Declare vsal,vcomm double(9,2);
Declare emp_cur cursor for select * from emp;
Declare continue handler for NOT FOUND set finish = 1;
open emp_cur;
l1 : loop
fetch emp_cur into vempno,vename,vjob,vmgr,vhiredate,vsal,vcomm,vdeptno;
if finish =1 then
leave l1;
end if;
select avg(sal) into average
from emp;
if average > vsal then
set status = 'Greater';
elseif average < vsal then
set status = 'Lesser';
elseif average = vsal then
set status = 'Equal';
else
set status = "Emp table is empty";
end if;
select vempno,vename,vjob,vsal,status,vdeptno;
end loop;
close emp_cur;
End //
Delimiter ;

