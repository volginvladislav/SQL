--1)Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name,monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id;

--2)Вывести всех работников у которых ЗП меньше 2000.
select employee_name,monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
join employees on employee_salary.employee_id = employees.id
where monthly_salary < 2000;

--3)Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
where not employee_id in (select id from employees);

--4)Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary from employee_salary 
join salary on employee_salary.salary_id = salary.id
where (not employee_id in (select id from employees)) and monthly_salary < 2000;

--5)Найти всех работников кому не начислена ЗП.
select employees.employee_name from employees
where not employees.id  in (select employee_id from employee_salary);

--6)Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id;

--7)Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name in ('Junior Java developer','Middle Java developer','Senior Java developer');

--8)Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name in ('Junior Python developer','Middle Python developer','Senior Python developer');

select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Python developer'

--9)ывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA%';

--10)Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Manual QA%';

--11)Вывести имена и должность автоматизаторов QA.
select employees.employee_name, roles.role_name from roles_employee 
join employees on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%Automation QA%';

--12)Вывести имена и зарплаты Junior специалистов.
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Junior%';

--13)Вывести имена и зарплаты Middle специалистов.
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Middle%';

--14)Вывести имена и зарплаты Senior специалистов
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Senior%';

--15)Вывести зарплаты Java разработчиков.
select roles.role_name, salary.monthly_salary from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Java developer%';

--16)Вывести зарплаты Python разработчиков.
select roles.role_name, salary.monthly_salary from salary 
join employee_salary on salary.id = employee_salary.salary_id 
join roles_employee on roles_employee.employee_id  = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id
where roles.role_name like '%Python developer%';

--17)Вывести имена и зарплаты Junior Python разработчиков.
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Junior Python developer%';

--18)Вывести имена и зарплаты Middle JS разработчиков.
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Middle JS developer%';

--19)Вывести имена и зарплаты Senior Java разработчиков.
select employees.employee_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Senior Java developer%';

--20)Вывести зарплаты Junior QA инженеров.
select employees.employee_name, salary.monthly_salary, roles.role_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where roles.role_name  like '%Junior%QA%engineer%';

--21)Вывести среднюю зарплату всех Junior специалистов.
select avg(monthly_salary) as avg_salary_Juniors from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%Junior%';

--22)Вывести сумму зарплат JS разработчиков.
select sum(monthly_salary) as sum_js_developers_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%JavaScript%developer%';

--23)Вывести минимальную ЗП QA инженеров.
select min(monthly_salary) as min_QA_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';

--24)Вывести максимальную ЗП QA инженеров.
select max(monthly_salary) as max_QA_salary from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%QA%';

--25)Вывести количество QA инженеров.
select count(role_id) as count_QA from roles_employee 
join roles on roles.id = roles_employee.role_id 
where role_name like '%QA%';

--26)Вывести количество Middle специалистов..
select count(role_id) as count_Middle from roles_employee 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Middle%';

--27)Вывести количество разработчиков.
select count(role_id) as count_developers from roles_employee 
join roles on roles.id = roles_employee.role_id 
where role_name like '%developer';

--28)Вывести фонд (сумму) зарплаты разработчиков..
select sum(monthly_salary) as sum_salary_developers from salary
join employee_salary on employee_salary.salary_id = salary.id 
join roles_employee on roles_employee.employee_id = employee_salary.employee_id 
join roles on roles.id = roles_employee.role_id 
where roles.role_name like '%developer';

--29)Вывести имена, должности и ЗП всех специалистов по возрастанию.
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
order by salary.monthly_salary;


--30)Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300.
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where salary.monthly_salary between 1700  and 2300
order by salary.monthly_salary, ;

--31)Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300.
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where salary.monthly_salary < 2300
order by salary.monthly_salary;

--32)Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000.
select employees.employee_name,roles.role_name, salary.monthly_salary from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id 
where salary.monthly_salary = 1100 or salary.monthly_salary = 1500 or salary.monthly_salary = 2000
order by salary.monthly_salary;
