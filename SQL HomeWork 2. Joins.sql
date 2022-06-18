-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees_name,monthly_salary from employee_salary e
join employees es on e.id=es.id
join salary s on s.id=e.salary_id;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees_name,monthly_salary from employee_salary e
join employees es on e.id=es.id
join salary s on s.id=e.salary_id 
where monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select distinct monthly_salary from salary s 
left join employee_salary es on s.id=es.salary_id 
order by monthly_salary desc;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select distinct monthly_salary from salary s 
left join employee_salary es on s.id=es.salary_id 
where monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employees_name from employees es
left join employee_salary es2 on es.id=employee_id
where salary_id is null
order by es.id;

--6. Вывести всех работников с названиями их должности.
select employees_name,role_name from employees e
left join roles_employee re on e.id=re.employee_id
left join roles r on re.role_id=r.id 
order by role_name;

--7. Вывести имена и должность только Java разработчиков.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Java %'
order by role_name;

--8. Вывести имена и должность только Python разработчиков.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Python %'
order by role_name;

--9. Вывести имена и должность всех QA инженеров.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% QA %'
order by role_name;

--10. Вывести имена и должность ручных QA инженеров.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Manual QA%'
order by role_name;

--11. Вывести имена и должность автоматизаторов QA
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Automation QA%'
order by role_name;

-- 12. Вывести имена и зарплаты Junior специалистов
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select monthly_salary from salary s 
join employee_salary es on s.id=es.salary_id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '% Java %';

--16. Вывести зарплаты Python разработчиков
select monthly_salary from salary s 
join employee_salary es on s.id=es.salary_id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '% Python %';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Middle JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Senior Java %';

--20. Вывести зарплаты Junior QA инженеров
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior%QA%engineer%';