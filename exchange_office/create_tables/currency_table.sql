create table currency(
	ID serial primary key,
    currency_name varchar(255) not null,
    exchange_rate float
);