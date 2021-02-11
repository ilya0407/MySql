create table employee(
	ID serial primary key,
    ID_exchange_office bigint unsigned,
    Full_name varchar(255) not null,
    Phone_number varchar(16),
    Email varchar(255),
    Date_of_birth date,
    foreign key(ID_exchange_office) references exchange_office(ID) on delete set null
);