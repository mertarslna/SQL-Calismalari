select
e.first_name + ' '+e.last_name employee,
m.first_name + ' '+ m.last_name manager
from
sales.staffs e
inner join sales.staffs m on m.staff_id = e.manager_id
order by
manager