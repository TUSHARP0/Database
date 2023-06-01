create table veh_history(
vno int,
vname varchar(20),
oldprice double(9,2),
newprice decimal(9,2),
chdate date,
username varchar(20)
);

Delimiter //
create trigger empveh after update on vehicle
for each row
begin
insert into veh_history values(Old.vid,Old.price,New.price,curdate(),user());
End //
Delimiter ;
