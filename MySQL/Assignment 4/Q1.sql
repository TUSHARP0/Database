/* write a procedure to insert record into employee table.
the procedure should accept empno, ename, sal, job, hiredate as input parameter
write insert statement inside procedure insert_rec to add one record into table */

Delimiter //
create procedure insert_rec(in no int, in name varchar(20), in salary double(9,2),in desg varchar(20),in hdate date)
Begin
insert into emp(empno,ename,sal,job,hiredate) values(no,name,salary,desg,hdate); 
End //
Delimiter ;

call insert_rec(69,"Tushar",500000,"Head","2001-08-02");
