/* write a procedure to display empno,ename,deptno,dname for all employees with sal > given salary. pass salary as a parameter to procedure */

Delimiter //
create procedure display_rec(in psal double(9,2))
Begin
Select e.empno,e.ename,d.deptno,d.dname
from emp e, dept d
where e.deptno=d.deptno and e.sal > psal;
End //
Delimiter ;

call display_rec(2000);
