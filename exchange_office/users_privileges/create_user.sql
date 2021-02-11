create user 'guest'@'localhost' identified by '12345';

grant select, insert on exchange_office.* to 'guest'@'localhost';   
