--1 ������� ������� employees.
create table employees (
	id serial primary key,
	employees_name varchar(50) not null);

--2 ��������� ������� employee 70 ��������.
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

--3 ������� ������� salary
create table salary (
	id serial primary key,
	monthly_salary int not null);

--4 ��������� ������� salary 15 ��������
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
	   (2400),
	   (2500);
	  
--5 ������� ������� employee_salary
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null);

--6 ��������� ������� employee_salary 40 �������� (� 10 ����� �� 40 �������� �������������� employee_id)
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

--7 ������� ������� roles
create table roles(
id serial primary key,
role_name int not null unique);

--8 �������� ��� ������ role_name � int �� varchar(30)
alter table roles alter column role_name type varchar(30);


select * from salary;
select * from employees;
select * from employee_salary;
select * from roles;