/* write a procedure to delete record from employee table.
the procedure should accept empno as input parameter.
write delete statement inside procedure delete_emp to delete one record from emp
table */

Delimiter //
create procedure delete_rec(in no int)
Begin
Delete from emp
where empno=no;
End //
Delimiter ;

call delete_rec(6901);
