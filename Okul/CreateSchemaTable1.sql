--create schema hr;

create table hr.candidates(
	id int primary key identity,
	fullname varchar(100) not null
);

create table hr.employees(
	id int primary key identity,
	fullname varchar(100) not null
);
