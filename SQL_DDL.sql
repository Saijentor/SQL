create table salary(
	id serial primary key,
	monthly_salary int not null
)

create table roles(
	id serial primary key,
	role_title varchar (50) unique not null
)

create table roles_salary(
	id serial primary key,
	id_roles int not null,
	id_salary int not null,
	foreign key(id_roles)
		references roles(id),
	foreign key(id_salary)
		references salary(id)
)

insert into salary(monthly_salary)
values (1200),
	   (1400),
	   (1500),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2200),
	   (2500),
	   (2700),
	   (2900),
	   (3000);

insert into roles(role_title)
values ('QA_manual_junior'),
	   ('QA_manual_middle'),
	   ('QA_manual_senior'),
	   ('QA_automation_junior'),
	   ('QA_automation_middle'),
	   ('QA_automation_senior'),
	   ('Java_developer_junior'),
	   ('Java_developer_middle'),
	   ('Java_developer_senior');
	  
insert into roles_salary(id_roles, id_salary)
values (1,1),
	   (2,4),
	   (3,10),
	   (4,3),
	   (5,8),
	   (6,11);
	  
alter table roles
add column parking int;

update roles 
set parking = 1
where id in (3,6,9);

alter table roles 
rename column parking to taxi;

alter table roles 
drop column taxi;

select * from roles order by id;
