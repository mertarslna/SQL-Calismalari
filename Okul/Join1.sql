--inner join e�le�en kay�tlar� getirir
--left join sol tablodaki t�m kay�tlar� e�le�en sa� tablo kay�tlar�n� getirir
--right join sa� tablodaki t�m kay�tlar� e�le�en sol tablo kay�tlar�n� getirir
--full join sol ve sa� tablodaki t�m kay�tlar� ve e�le�en kay�tlar� getitir

select 
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
from 
	hr.candidates c
	inner join hr.employees e
		on e.fullname = c.fullname;
