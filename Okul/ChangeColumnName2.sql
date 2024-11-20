select category_name 'Product Category'
from production.categories
order by category_name; -- bu kullanýmla

select category_name 'Product Category'
from production.categories
order by 'Product Category'; -- bu ikisi de aynýdýr