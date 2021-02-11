delimiter $$
create procedure check_employee_transaction(in ID_employee bigint unsigned, ID_exchange_office bigint unsigned)
begin
	if ID_employee not in (select id from employee
								where employee.ID_exchange_office = ID_exchange_office) 
	then signal sqlstate '45000'
		set message_text = 'Employee ID doesn`t match exchange office ID';
	end if;
end; $$
delimiter ;

delimiter $$
create trigger check_insert_employee
before insert on exchange_transaction
for each row 
begin
	call check_employee_transaction(new.ID_employee,new.ID_exchange_office);
end; $$
delimiter ;

delimiter $$
create trigger check_update_employee
before update on exchange_transaction
for each row 
begin
	call check_employee_transaction(new.ID_employee,new.ID_exchange_office);
end; $$
delimiter ;
