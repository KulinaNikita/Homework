--Таблица employees
--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name Varchar(50) not null
);

select * from employees;

--Íàïîëíèòü òàáëèöó employee 70 ñòðîêàìè.

insert into employees(id, employee_name)
values (default, 'Noah'),
(default, 'Emma'),
(default, 'Oliver'),
(default, 'Ava'),
(default, 'Elijah'),
(default, 'Charlotte'),
(default, 'William'),
(default, 'Sophia'),
(default, 'James'),
(default, 'Amelia'),
(default, 'Benjamin'),
(default, 'Isabella'),
(default, 'Lucas'),
(default, 'Mia'),
(default, 'Henry'),
(default, 'Evelyn'),
(default, 'Alexander'),
(default, 'Harper'),
(default, 'Mason'),
(default, 'Camila'),
(default, 'Michael'),
(default, 'Gianna'),
(default, 'Ethan'),
(default, 'Abigail'),
(default, 'Lucass'),
(default, 'Noah'),
(default, 'Emma'),
(default, 'Oliver'),
(default, 'Ava'),
(default, 'Elijah'),
(default, 'Charlotte'),
(default, 'William'),
(default, 'Sophia'),
(default, 'James'),
(default, 'Amelia'),
(default, 'Benjamin'),
(default, 'Isabella'),
(default, 'Lucas'),
(default, 'Mia'),
(default, 'Henry'),
(default, 'Evelyn'),
(default, 'Alexander'),
(default, 'Harper'),
(default, 'Mason'),
(default, 'Camila'),
(default, 'Michael'),
(default, 'Gianna'),
(default, 'Ethan'),
(default, 'Abigail'),
(default, 'Lucass'),
(default, 'Noah'),
(default, 'Emma'),
(default, 'Oliver'),
(default, 'Ava'),
(default, 'Elijah'),
(default, 'Charlotte'),
(default, 'William'),
(default, 'Sophia'),
(default, 'James'),
(default, 'Amelia'),
(default, 'Benjamin'),
(default, 'Isabella'),
(default, 'Lucas'),
(default, 'Mia'),
(default, 'Henry'),
(default, 'Evelyn'),
(default, 'Alexander'),
(default, 'Harper'),
(default, 'Mason'),
(default, 'Camila');

--Òàáëèöà salary
--Ñîçäàòü òàáëèöó salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary1(
  id serial primary key,
  monthly_salary1 int not null
);

select * from salary1;

--Íàïîëíèòü òàáëèöó salary 15 ñòðîêàìè:
insert into salary1(monthly_salary1)
values (1100),
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
   
--Òàáëèöà employee_salary
--Ñîçäàòü òàáëèöó employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
      
create table employee_salary1(
id serial primary key,
employee_id Int unique not null, 
salary_id Int not null
);

select * from employee_salary1;

--Íàïîëíèòü òàáëèöó employee_salary 40 ñòðîêàìè:
-- â 10 ñòðîê èç 40 âñòàâèòü íåñóùåñòâóþùèå employee_id
insert into employee_salary1(employee_id, salary_id)
values (3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(2, 11),
(4, 12),
(6, 14),
(7, 18),
(8, 19),
(9, 21),
(10, 18),
(34, 16),
(12, 19),
(13, 22),
(14, 27),
(18, 28),
(19, 29),
(17, 38),
(20, 9),
(21, 8),
(22, 7),
(27, 6),
(24, 5),
(71, 4),
(72, 2),
(73, 1),
(74, 38),
(75, 17),
(76, 18),
(77, 32),
(78, 16),
(79, 13),
(80, 23);

--Òàáëèöà roles
--Ñîçäàòü òàáëèöó roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles1(
id Serial  primary key,
role_name int unique not null 
);

select * from roles1;
--Ïîìåíÿòü òèï ñòîëáà role_name ñ int íà varchar(30)

alter table roles1 
alter column role_name type varchar(30);

--Íàïîëíèòü òàáëèöó roles 20 ñòðîêàìè:
insert into roles1(role_name)
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

--Òàáëèöà roles_employee
--Ñîçäàòü òàáëèöó roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (âíåøíèé êëþ÷ äëÿ òàáëèöû employees, ïîëå id)
-- role_id. Int, not null (âíåøíèé êëþ÷ äëÿ òàáëèöû roles, ïîëå id)

create table roles_employee(
id serial  primary key,
employee_id Int unique not null,
role_id Int not null,
 foreign key (employee_id)
    references employees(id),
  foreign key (role_id)
    references roles1(id));

select * from roles_employee;

--Íàïîëíèòü òàáëèöó roles_employee 40 ñòðîêàìè:

insert into roles_employee(employee_id, role_id)
values (7,2), 
(20, 4),
(3, 9),
(5, 13),
(23, 4),
(11, 2),
(10, 9),
(22, 13),
(21, 3),
(34, 4),
(6, 7),
(19, 2),
(18, 3),
(17, 4),
(16, 5),
(15, 6),
(14, 7),
(13, 8),
(12, 9),
(33, 13),
(32, 12),
(31, 11),
(30, 10),
(29, 9),
(28, 8),
(27, 7),
(26, 6),
(25, 5),
(24, 4),
(40, 20),
(39, 19),
(38, 18),
(37, 17),
(36, 16),
(35, 15);
