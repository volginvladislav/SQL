--1)Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name,monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id;

--2)
select employee_name,monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
where monthly_salary < 2000;

--3) 
select monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
where not employee_id in (select id from employees);

--4)
select monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
where (not employee_id in (select id from employees)) and monthly_salary < 2000;

--5)
select employees.employee_name from employees
where not employees.id  in (select employee_id from employee_salary);

--6)
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

--7)
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name in ('Junior Java developer','Middle Java developer','Senior Java developer');

--8)
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name in ('Junior Python developer','Middle Python developer','Senior Python developer');

select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python developer'

--9)
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

--10)
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';

--11)
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

--12) 
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Junior%';

--13)
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Middle%';

--14)
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Senior%';

--15)
select roles.role_name, salary.monthly_salary from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java developer%';

--16)
select roles.role_name, salary.monthly_salary from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python developer%';

--17)
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Junior Python developer%';

--18)
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Middle JS developer%';

--19)
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Senior Java developer%';

--20)
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Junior%QA%engineer%';

--21)
select avg(monthly_salary) as avg_salary_Juniors from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%';

--22)
select sum(monthly_salary) as sum_js_developers_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%JavaScript%developer%';

--23)
select min(monthly_salary) as min_QA_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';

--24)
select max(monthly_salary) as max_QA_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';

--25)
select count(role_id) as count_QA from roles_employee 
join roles on roles.id = roles_employee.role_id 
where role_name like '%QA%';

--26)
select count(role_id) as count_Middle from roles_employee 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Middle%';

--27)
select count(role_id) as count_developers from roles_employee 
join roles on roles.id = roles_employee.role_id 
where role_name like '%developer';

--28)
select sum(monthly_salary) as sum_salary_developers from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer';

--29)
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
order by salary.monthly_salary;


--30)
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where salary.monthly_salary between 1700  and 2300
order by salary.monthly_salary, ;

--31)
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where salary.monthly_salary < 2300
order by salary.monthly_salary;

--32)
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000
order by salary.monthly_salary;
