select top 10
product_name, list_price, model_year
from
production.products
order by list_price desc;