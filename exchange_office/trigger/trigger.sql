delimiter $$
create procedure check_transaction(in Number_of_units int)
begin
	if Number_of_units < 0 
	then  
    signal sqlstate '45000'
		set message_text = 'Number of units can`t be less then 0';
	end if;
end; $$
delimiter ;  

delimiter $$
create trigger check_insert_transaction
before insert on exchange_transaction
for each row 
begin
	call check_transaction(new.Number_of_units);
end; $$
delimiter ;

delimiter $$
create trigger check_update_transaction
before update on exchange_transaction
for each row 
begin
	call check_transaction(new.Number_of_units);
end; $$
delimiter ;
