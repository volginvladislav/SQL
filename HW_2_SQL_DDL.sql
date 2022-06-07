--1)Create table employees:
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

--2)Populate the employee table with 70 rows"
insert into employees(employee_name)
values  ('Donald Adams'),
		('Jerry Phelps'),
		('Sarah Smith'),
		('Karen Strickland'),
		('Kyle Walters'),
		('Shirley Wheeler'),
		('Edward Hall'),
		('Thomas Martin'),
		('June Garza'),
		('Vanessa Gonzales'),
		('Benjamin McBride'),
		('Elizabeth Smith'),
		('Susan Duncan'),
		('Gary Roberts'),
		('Charles Caldwell'),
		('Scott Smith'),
		('John McKinney'),
		('Betty Swanson'),
		('Kelly Martinez'),
		('David Jordan'),
		('Patricia Frazier'),
		('Shannon Davis'),
		('William Rivera'),
		('Shirley Murphy'),
		('Leroy Davis'),
		('Morris Hamilton'),
		('Barbara Wallace'),
		('Ethel Walker'),
		('Julie Allen'),
		('Michael Gordon'),
		('Jo Torres'),
		('Herman Murphy'),
		('Richard Thomas'),
		('James Chavez'),
		('Steven Thompson'),
		('Robert Caldwell'),
		('David Fox'),
		('Jack Webb'),
		('Ralph Price'),
		('Helen Johnson'),
		('Tyrone Reynolds'),
		('Jeffrey King'),
		('Walter Lopez'),
		('Juan Mathis'),
		('Fernando Cole'),
		('Cynthia Matthews'),
		('Alan Curtis'),
		('Lisa Morris'),
		('Alberto Thompson'),
		('Richard Butler'),
		('Doris Rodriguez'),
		('Joseph Hayes'),
		('James Wright'),
		('Jean Brooks'),
		('Tracy Page'),
		('Darryl Rose'),
		('Paul Rivera'),
		('Karen Miller'),
		('Darlene Clark'),
		('Betty Mendoza'),
		('Elsie Shaw'),
		('Rebecca Rodgers'),
		('Christopher Graham'),
		('Curtis Moore'),
		('Randall Barber'),
		('Mildred Johnson'),
		('Kenneth Walker'),
		('Sara Matthews'),
		('Jonathan Shelton'),
		('Brian Dunn');
		
select * from employees;

--3)Create table salary:
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

--4)Populate the salary table with 15 rows.
insert into salary(monthly_salary)
values  (1000),
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
	
select * from salary;

--5)Create table employee_salary:
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

--6)Populate the employee_salary table with 40 rows
--- in 10 lines out of 40 insert non-existent employee_id.
insert into employee_salary(employee_id, salary_id)
values  (54,2),
		(35,9),
		(48,6),
		(27,6),
		(50,12),
		(5,3),
		(65,3),
		(86,2),
		(19,14),
		(24,9),
		(20,7),
		(64,7),
		(22,12),
		(45,4),
		(23,6),
		(38,4),
		(70,11),
		(49,1),
		(46,1),
		(16,3),
		(28,3),
		(47,11),
		(13,8),
		(11,7),
		(4,14),
		(2,7),
		(59,2),
		(26,13),
		(15,8),
		(30,12),
		(99,10),
		(96,3),
		(100,9),
		(63,7),
		(81,8),
		(87,9),
		(95,7),
		(74,4),
		(73,5),
		(71,14);

select * from employee_salary;

--7)Create table roles:
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;

--8)Change column type role_name from int to varchar(30).
alter table roles
alter column role_name type varchar(30);

--9)Populate the roles table with 20 rows:
insert into roles(role_name)
values  ('Junior Python developer'),
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
		
select * from roles;

--10)Create table roles_employee:
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (foreign key for employees table,  id)
--- role_id. Int, not null (foreign key for roles table,  id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);

select * from roles_employee;

--11)Populate the roles_employee table with 40 rows:
insert into roles_employee(employee_id, role_id)
values	(21,1),
		(41,5),
		(52,14),
		(5,20),
		(22,4),
		(17,15),
		(45,20),
		(35,1),
		(2,11),
		(46,2),
		(66,5),
		(57,16),
		(36,11),
		(55,3),
		(70,18),
		(40,19),
		(23,17),
		(28,12),
		(63,18),
		(18,8),
		(31,2),
		(24,8),
		(8,1),
		(42,10),
		(65,8),
		(54,14),
		(51,10),
		(34,7),
		(16,5),
		(7,7),
		(39,15),
		(58,11),
		(68,10),
		(47,19),
		(43,4),
		(33,12),
		(64,9),
		(44,13),
		(27,11),
		(48,6);
		
select * from roles_employee;
