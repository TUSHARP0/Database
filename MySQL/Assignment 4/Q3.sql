
Delimiter //
create procedure display_rec(in psal double(9,2))
Begin
Select e.empno,e.ename,d.deptno,d.dname
from emp e, dept d
where e.deptno=d.deptno and e.sal > psal;
End //
Delimiter ;

call display_rec(2000);
