
Delimiter //
create procedure insert_rec(in no int, in name varchar(20), in salary double(9,2),in desg varchar(20),in hdate date)
Begin
insert into emp(empno,ename,sal,job,hiredate) values(no,name,salary,desg,hdate); 
End //
Delimiter ;

call insert_rec(69,"Tushar",500000,"Head","2001-08-02");
