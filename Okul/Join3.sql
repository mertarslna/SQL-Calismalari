select
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
from
	hr.candidates c
	left join hr.employees e
		on e.fullname = c.fullname;
--where
--	e.id is null;