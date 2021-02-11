select C.ID, C.currency_name, C.exchange_rate, count(*) 
from currency as C join exchange_transaction as ET
		on C.ID = ET.ID_currency 
group by ET.ID_currency
order by count(*)