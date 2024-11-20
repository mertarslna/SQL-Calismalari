select
	m.name member,
	p.title project
from
	pm.members m
	full outer join pm.projects p --full outer join = full join
		on p.id = m.project_id;
--where
--	m.id is null or p.id is null;