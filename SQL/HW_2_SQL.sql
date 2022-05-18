--Таблица employees
--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees (
id serial primary key,
employee_name Varchar(50) not null
);

select * from employees;

--Наполнить таблицу employee 70 строками.

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

--Таблица salary
--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary1(
  id serial primary key,
  monthly_salary1 int not null
);

select * from salary1;

--Наполнить таблицу salary 15 строками:
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
   
--Таблица employee_salary
--Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
      
create table employee_salary1(
id serial primary key,
employee_id Int unique not null, 
salary_id Int not null
);

select * from employee_salary1;

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id
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
(7, 15),
(8, 9),
(9, 1),
(10, 8),
(34, 6),
(12, 9),
(13, 2),
(14, 7),
(18, 8),
(19, 9),
(17, 8),
(20, 9),
(21, 8),
(22, 7),
(27, 6),
(24, 5),
(71, 4),
(72, 2),
(73, 1),
(74, 8),
(75, 7),
(76, 8),
(77, 2),
(78, 6),
(79, 13),
(80, 3);

--Таблица roles
--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles1(
id Serial  primary key,
role_name int unique not null 
);

select * from roles1;
--Поменять тип столба role_name с int на varchar(30)

alter table roles1 
alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками:
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

--Таблица roles_employee
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial  primary key,
employee_id Int unique not null,
role_id Int not null,
 foreign key (employee_id)
    references employees(id),
  foreign key (role_id)
    references roles1(id));

select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:

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
