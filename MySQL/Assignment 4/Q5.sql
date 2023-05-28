
Delimiter //
create procedure dis_prod(in ppid int)
Begin
Select p.pid,p.pname,c.cid,c.cname,s.sname
from product p, category2 c, salesman2 s
where p.cid=c.cid and p.sid=s.sid and p.pid=ppid;
End //
Delimiter ;

call dis_prod(111)
