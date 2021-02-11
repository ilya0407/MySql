select * from exchange_transaction
where Number_of_units = (select max(Number_of_units) from exchange_transaction)