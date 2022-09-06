DELIMITER //
create procedure abc(IN vid int(10),IN vname varchar(20),IN age int(3),IN house_no int(10),
IN city varchar(20),IN state varchar(20),IN pincode int(15))
begin
declare msg varchar(20);
if age>=18 then
insert into voter(vid,vname,age,house_no,city,state,pincode)values(Vvid,Vvname,Vage,Vhose_no,Vcity,Vstate,Vpincode);
set msg="row inserted";
else
set msg="voter not eligible";
end if;
select msg;
end //
DELIMITER ;
