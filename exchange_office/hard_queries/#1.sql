select E.ID, E.Full_name, E.Date_of_birth, E.Phone_number, E.Email, count(*) 
from exchange_transaction as ET 
join employee as E on ET.ID_employee = E.ID 
group by E.ID
order by (count(*)) 