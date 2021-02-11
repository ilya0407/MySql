create table exchange_transaction(
	ID serial primary key,
    ID_exchange_office bigint unsigned,
    ID_employee bigint unsigned,
    ID_client bigint unsigned,
    ID_currency bigint unsigned,
    Number_of_units int,
    Transaction_date date,
    foreign key(ID_exchange_office) references exchange_office(ID),
    foreign key(ID_employee) references employee(ID),
    foreign key(ID_client) references client(ID),
    foreign key(ID_currency) references currency(ID)
);