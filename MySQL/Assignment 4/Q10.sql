Delimiter //
create function get_cost1( psal double(9,2), phdate date) returns double(9,2)
Begin
Declare service int;
Declare da,hra,ta,nsal,vsal double(9,2);
set da = 0.15*psal;
set hra = 0.20*psal;
set ta= 0.08*psal;
set nsal=psal+da+hra+ta;
set service=get_exp1(phdate);
if service < 1 then
set vsal=nsal;
elseif service >= 1 and service < 2 then
set vsal = 0.10 * nsal;
elseif service >= 2 and service < 4 then
set vsal = 0.20 * nsal;
else
set vsal = 0.30 * nsal;
end if;
return vsal;
end //
delimiter ;

select get_cost1(5000,'2012-02-02')"Cost To Company";
