/* write a procedure to display all vehicles bought by a customer. pass cutome name as
a parameter.(use vehicle,salesman,custome and relation table) */

Delimiter //
create procedure dis_veh(in pcname varchar(20))
Begin
select v.vname,c.cname
from vehicle v, customer c, cust_vehicle cv
where cv.vid=v.vid and cv.cid=c.cid and c.cname=pcname;
End //
Delimter ;
