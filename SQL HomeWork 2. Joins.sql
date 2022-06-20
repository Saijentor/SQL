-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees_name,monthly_salary from employee_salary e
join employees es on e.id=es.id
join salary s on s.id=e.salary_id
order by employees_name;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees_name,monthly_salary from employee_salary e
join employees es on e.id=es.id
join salary s on s.id=e.salary_id 
where monthly_salary < 2000
order by employees_name;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select distinct monthly_salary from salary s 
left join employee_salary es on s.id=es.salary_id
where employee_id is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select distinct monthly_salary from salary s 
left join employee_salary es on s.id=es.salary_id 
where monthly_salary < 2000 and employee_id is null;

-- 5. Найти всех работников кому не начислена ЗП.
select employees_name from employees es
left join employee_salary es2 on es.id=es2.employee_id
where salary_id is null
order by employees_name;

--6. Вывести всех работников с названиями их должности.
select employees_name,role_name from employees e
left join roles_employee re on e.id=re.employee_id
left join roles r on re.role_id=r.id 
order by role_name;

--7. Вывести имена и должность только Java разработчиков.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Java %developer'
order by role_name;

--8. Вывести имена и должность только Python разработчиков.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Python %developer%'
order by role_name;

--9. Вывести имена и должность всех QA инженеров.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% QA %engineer%'
order by role_name;

--10. Вывести имена и должность ручных QA инженеров.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Manual QA%engineer%'
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
where role_name like '% Java %developer';

--16. Вывести зарплаты Python разработчиков
select monthly_salary from salary s 
join employee_salary es on s.id=es.salary_id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '% Python %developer';

--17. Вывести имена и зарплаты Junior Python разработчиков
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior Python%developer%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Middle JavaScript%developer%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Senior Java %developer%';

--20. Вывести зарплаты Junior QA инженеров
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior%QA%engineer%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) avg_salary_junior from salary s 
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select avg(monthly_salary) avg_salary_js from salary s 
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%JavaScript%developer';

--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) min_salary_QA_engineer from salary s 
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%%QA%engineer%';

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) max_salary_QA_engineer from salary s 
join employee_salary es on s.id=es.salary_id 
join employees e on e.id=es.employee_id 
join roles_employee re on re.employee_id=e.id 
join roles r on r.id=re.role_id 
where role_name like '%%QA%engineer%';

--25. Вывести количество QA инженеров
select count(employee_id) count_QA_engineer from roles_employee re
join roles r on r.id=re.role_id 
where role_name like '%%QA%engineer%';

--26. Вывести количество Middle специалистов.
select count(employee_id) count_middle from roles_employee re
join roles r on r.id=re.role_id 
where role_name like '%%Middle%'; 

--27. Вывести количество разработчиков
select count(employees_name) count_employees from employees;

--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) sum_salary_developer from employee_salary es
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=es.employee_id 
join roles r on re.role_id=r.id
where role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees_name,role_name,monthly_salary from employees e 
left join roles_employee re on e.id=re.employee_id 
left join roles r on r.id=re.role_id 
left join employee_salary es on re.id=es.employee_id 
left join salary s on es.salary_id=s.id
order by employees_name;

/*30. Вывести имена, должности и ЗП всех специалистов по возрастанию 
 * у специалистов у которых ЗП от 1700 до 2300*/
select employees_name,role_name,monthly_salary from employees e 
left join roles_employee re on e.id=re.employee_id 
left join roles r on r.id=re.role_id 
left join employee_salary es on re.id=es.employee_id 
left join salary s on es.salary_id=s.id
where monthly_salary between 1700 and 2300
order by employees_name;

/*31. Вывести имена, должности и ЗП всех специалистов по возрастанию 
 * у специалистов у которых ЗП меньше 2300*/
select employees_name,role_name,monthly_salary from employees e 
left join roles_employee re on e.id=re.employee_id 
left join roles r on r.id=re.role_id 
left join employee_salary es on re.id=es.employee_id 
left join salary s on es.salary_id=s.id
where monthly_salary < 2300 or monthly_salary is null
order by employees_name;

/*32. Вывести имена, должности и ЗП всех специалистов по возрастанию 
 *у специалистов у которых ЗП равна 1100, 1500, 2000*/
select employees_name,role_name,monthly_salary from employees e 
left join roles_employee re on e.id=re.employee_id 
left join roles r on r.id=re.role_id 
left join employee_salary es on re.id=es.employee_id 
left join salary s on es.salary_id=s.id
where monthly_salary in (1100, 1500, 2000)
order by employees_name;