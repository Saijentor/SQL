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
