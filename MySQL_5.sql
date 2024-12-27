create database company;
use company;
create table employees(emp_id int unique, emp_name varchar(20),
department_id int);
insert into employees(emp_id, emp_name, department_id)
values(1,'Alice',10),(2,'Bob',20),(3,'Charlie',30),(4,'David',10),(5,'Eve',40);
select * from employees;

create table departments(department_id int unique, department_name
varchar(20));
insert into departments(department_id, department_name)
values(10,'HR'),(20,'Finance'),(30,'IT'),(40,'Admin'),(50,'Marketing');
select * from departments;

create table projects(project_id int unique, emp_id int, projects_name
varchar(20));
insert into projects(project_id, emp_id, projects_name)
values(101,1,'Alpha'),(102,2,'Beta'),(103,3,'Gamma'),(104,4,'Delta');
select * from projects;

#1.Write a query to get Employee and Department details using join.
select * from employees join departments on employees.department_id =
departments.department_id;

#2.Write a query to retrieve all employees with their departments, even if the
department is missing.
select emp_name, department_name from employees left join departments on
employees.department_id = departments.department_id;

#3.Write a query to get department details even if there are no employees in that
department.
select department_name, emp_name from employees right join departments
on employees.department_id = departments.department_id;

#4.Write a query to get all employees and departments, whether matched or not.
select * from employees left join departments on employees.department_id =
departments.department_id union
select * from employees right join departments on employees.department_id =
departments.department_id;

#5.JOIN three tables (Employees, Departments, Projects) to get employee,
department, and project information.
select * from employees left join departments on employees.department_id =
departments.department_id left join projects on employees.emp_id =
projects.emp_id;

#6.Find employees who are not assigned to any projects.
select * from employees join projects on employees.emp_id = projects.emp_id
where projects_name is null;

#7.Find departments with no employees using a RIGHT JOIN.
select department_name from employees right join departments on
departments.department_id = employees.department_id where
employees.department_id is null;

#8.Write a query to get Employee and Department details using join with aliases.
select emp_id, emp_name, department_name from employees join
departments on employees.department_id = departments.department_id;

#9.Write a query to find employees in the same department as other employees.
select a.emp_id, a.emp_name, b.emp_id, b.emp_name from employees a join
employees b on a.department_id = b.department_id and a.emp_id != b.emp_id;

#10.Write a query to find projects managed by employees in the 'IT' department.
select p.project_id, p.projects_name from projects p join employees e on
p.emp_id = e.emp_id join departments d on e.department_id =
d.department_id where d.department_name = 'IT';

#11.Write a query to show employees and their project information (even if not
assigned to a project).
select e.emp_id, e.emp_name, p.projects_name from employees e left join
projects p on e.emp_id = p.emp_id;

#12.Find employees who work in departments with names starting with 'A'.
select e.emp_id, e.emp_name from employees e join departments d on
e.department_id = d.department_id where d.department_name like 'A%';

#13.Find the total number of employees in each department using GROUP BY and
JOIN.
select d.department_name, COUNT(e.emp_id) as TotalEmployees from
departments d left join employees e on d.department_id = e.department_id
group by d.department_name;

#14.Get the list of departments with more than one employee.
select d.department_name, COUNT(e.emp_id) as EmployeeCount from
departments d join employees e on d.department_id = e.department_id group
by d.department_name having COUNT(e.emp_id) > 1;