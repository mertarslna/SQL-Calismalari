select
	c.id candidate_id,
	c.fullname candidate_name,
	e.id emðloyee_id,
	e.fullname employee_name
from
	hr.candidates c
	right join hr.employees e
		on e.fullname = c.fullname;