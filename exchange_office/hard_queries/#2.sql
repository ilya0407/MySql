with tab as (select ET.ID, ET.ID_client, C.Full_name, C.Phone_number, 
					round(Number_of_units*CUR.exchange_rate,2) as sum 
			from 
				exchange_transaction as ET join currency as CUR
				on ET.ID_currency = CUR.ID
                join client as C on ET.ID_client = C.ID
)
select tab.ID_client, tab.Full_name, tab.Phone_number, tab.sum from tab
where sum = (select max(sum) from tab) 
