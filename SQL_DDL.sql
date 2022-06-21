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
	   (9,10),
	   (10,11),
	   (11,12),
	   (12,13),
	   (13,14),
	   (14,1),
	   (15,2),
	   (16,3),
	   (17,4),
	   (18,5),
	   (19,6),
	   (20,7),
	   (21,8),
	   (22,10),
	   (23,11),
	   (24,12),
	   (25,13),
	   (26,14),
	   (27,1),
	   (28,2),
	   (29,3),
	   (30,4),
	   (71,5),
	   (72,6),
	   (73,7),
	   (74,8),
	   (75,10),
	   (76,11),
	   (77,12),
	   (78,13),
	   (79,14),
	   (80,1);

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

--10 Создать таблицу roles_employee
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
);

--11 Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id,role_id)
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
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,4),
	   (25,5),
	   (26,6),
	   (27,7),
	   (28,8),
	   (29,9),
	   (30,10),
	   (31,11),
	   (32,12),
	   (33,13),
	   (34,14),
	   (35,15),
	   (36,16),
	   (37,17),
	   (38,18),
	   (39,19),
	   (40,20);

select * from salary;
select * from employees;
select * from employee_salary;
select * from roles;
select * from roles_employee;