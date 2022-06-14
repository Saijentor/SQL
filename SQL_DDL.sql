--1 Создать таблицу employees
create table employees (
	id serial primary key,
	employees_name varchar(50) not null);

--2 Наполнить таблицу employee 70 строками
insert into employees (employees_name)
values ('Kevin Wright'),
	   ('Franco Hernandez'),
	   ('Matthew Bell'),
	   ('Charles Walker'),
	   ('Emiliano Barnes'),
	   ('Xavier Brown'),
	   ('Irvin Mitchell'),
	   ('Harlow Mitchell'),
	   ('Trenton Thompson'),
	   ('Hudson Taylor'),
	   ('Yitzchak Butler'),
	   ('Gunnar Griffin'),
	   ('Quang Parker'),
	   ('Xathieur Hughes'),
	   ('Atlas Martinez'),
	   ('Marshall Adams'),
	   ('Grant Cooper'),
	   ('Keith Lopez'),
	   ('Oscar Martin'),
	   ('Holland Rodriguez'),
	   ('Kyler Foster'),
	   ('Owen Perez'),
	   ('Neil Evans'),
	   ('Dax Powell'),
	   ('Duke Morgan'),
	   ('Umer Thomas'),
	   ('Omar Barnes'),
	   ('Arlo Lee'),
	   ('Yusef Hughes'),
	   ('Emmitt Bryant'),
	   ('Lukas Richardson'),
	   ('Louis Rogers'),
	   ('Remington Harris'),
	   ('Kyler Peterson'),
	   ('Bruno Rivera'),
	   ('Eleanor Alexander'),
	   ('Miranda Williams'),
	   ('Brisa Garcia'),
	   ('Demi Lopez'),
	   ('Ursala Kelly'),
	   ('Demi Baker'),
	   ('Jayda Jones'),
	   ('Yelena Parker'),
	   ('Nicole Washington'),
	   ('Quella Moore'),
	   ('Ophelia Simmons'),
	   ('Elisa White'),
	   ('Octavie Watson'),
	   ('Emilia Evans'),
	   ('Nia Allen'),
	   ('Yvonne Gonzalez'),
	   ('Jazmine Edwards'),
	   ('Gracelynn Bell'),
	   ('Kaylee Bailey'),
	   ('Greta Ward'),
	   ('Zinnia Perez'),
	   ('Winnifred Brown'),
	   ('Fatima Gonzales'),
	   ('Luna Bennett'),
	   ('Jayla Harris'),
	   ('Leila Rodriguez'),
	   ('Noa Evans'),
	   ('Yulianna Watson'),
	   ('Rosalyn Rodriguez'),
	   ('Isabella Flores'),
	   ('Yadira Foster'),
	   ('Rosemary Griffin'),
	   ('Tabitha Campbell'),
	   ('Charli Edwards'),
	   ('Emelia Scott');

--3 Создать таблицу salary
create table salary (
	id serial primary key,
	monthly_salary int not null);

--4 Наполнить таблицу salary 15 строками
insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);
	  
--5 Создать таблицу employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

--6 Наполнить таблицу employee_salary 40 строками (в 10 строк из 40 вставить несуществующие employee_id)
insert into employee_salary (employee_id,salary_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,1),
	   (18,2),
	   (19,3),
	   (20,4),
	   (21,5),
	   (22,6),
	   (23,7),
	   (24,8),
	   (25,9),
	   (26,10),
	   (27,11),
	   (28,12),
	   (29,13),
	   (30,14),
	   (71,15),
	   (72,16),
	   (73,1),
	   (74,2),
	   (75,3),
	   (76,4),
	   (77,5),
	   (78,6),
	   (79,7),
	   (80,8);

--7 Создать таблицу roles
create table roles(
id serial primary key,
role_name int not null unique);

--8 Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);

--9 Наполнить таблицу roles 20 строками
insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	  
--10 ������� ������� roles_employee
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

select * from salary;
select * from employees;
select * from employee_salary;
select * from roles;