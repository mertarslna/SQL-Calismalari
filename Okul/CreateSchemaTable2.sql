--create table schema pm;

create table pm.projects(
	id int primary key identity,
	title varchar(255) not null
);

create table pm.members(
	id int primary key identity,
	name varchar(120) not null,
	project_id int,
	foreign key(project_id)
		references pm.projects(id)
);