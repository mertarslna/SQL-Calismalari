select city,first_name,last_name, phone
from sales.customers
order by len(first_name) desc; -- len(uzunluðu)