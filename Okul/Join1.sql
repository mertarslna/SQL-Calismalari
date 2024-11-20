--inner join eþleþen kayýtlarý getirir
--left join sol tablodaki tüm kayýtlarý eþleþen sað tablo kayýtlarýný getirir
--right join sað tablodaki tüm kayýtlarý eþleþen sol tablo kayýtlarýný getirir
--full join sol ve sað tablodaki tüm kayýtlarý ve eþleþen kayýtlarý getitir

select 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
from 
	hr.candidates c
	inner join hr.employees e
		on e.fullname = c.fullname;
