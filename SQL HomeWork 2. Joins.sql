-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees_name,monthly_salary from employee_salary e
join employees es on e.id=es.id
join salary s on s.id=e.salary_id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employees_name,monthly_salary from employee_salary e
join employees es on e.id=es.id
join salary s on s.id=e.salary_id 
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select distinct monthly_salary from salary s 
left join employee_salary es on s.id=es.salary_id 
order by monthly_salary desc;

-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select distinct monthly_salary from salary s 
left join employee_salary es on s.id=es.salary_id 
where monthly_salary < 2000;

-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employees_name from employees es
left join employee_salary es2 on es.id=employee_id
where salary_id is null
order by es.id;

--6. ������� ���� ���������� � ���������� �� ���������.
select employees_name,role_name from employees e
left join roles_employee re on e.id=re.employee_id
left join roles r on re.role_id=r.id 
order by role_name;

--7. ������� ����� � ��������� ������ Java �������������.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Java %'
order by role_name;

--8. ������� ����� � ��������� ������ Python �������������.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Python %'
order by role_name;

--9. ������� ����� � ��������� ���� QA ���������.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% QA %'
order by role_name;

--10. ������� ����� � ��������� ������ QA ���������.
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Manual QA%'
order by role_name;

--11. ������� ����� � ��������� ��������������� QA
select employees_name,role_name from employees e
join roles_employee re on e.id=re.employee_id
join roles r on re.role_id=r.id 
where role_name like '% Automation QA%'
order by role_name;

-- 12. ������� ����� � �������� Junior ������������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior%';

--13. ������� ����� � �������� Middle ������������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Senior%';

--15. ������� �������� Java �������������
select monthly_salary from salary s 
join employee_salary es on s.id=es.salary_id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '% Java %';

--16. ������� �������� Python �������������
select monthly_salary from salary s 
join employee_salary es on s.id=es.salary_id 
join roles_employee re on es.employee_id=re.employee_id 
join roles r on re.role_id=r.id 
where role_name like '% Python %';

--17. ������� ����� � �������� Junior Python �������������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Middle JavaScript%';

--19. ������� ����� � �������� Senior Java �������������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Senior Java %';

--20. ������� �������� Junior QA ���������
select employees_name,monthly_salary from employee_salary es
join employees e on es.employee_id=e.id 
join salary s on es.salary_id=s.id
join roles_employee re on re.employee_id=e.id
join roles r on re.role_id=r.id
where role_name like '%Junior%QA%engineer%';