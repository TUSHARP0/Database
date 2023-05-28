
Delimiter //
create procedure delete_rec(in no int)
Begin
Delete from emp
where empno=no;
End //
Delimiter ;

call delete_rec(6901);
