1. Find the average salary of employees in each department.
Select avg(salary), department from employee group by department;

2. Find the total number of employees hired after 2019.
Select count(emp_id) as Joined_After_2019 from employee where
hire_date>"2019-12-31";

3. List the departments and the total salary of all employees in each department,
ordered by the total salary.
Select department, sum(salary) as Total_Salary from employee group by
department order by Total_Salary;

4. Find the highest salary in the Finance department.
Select max(Salary) from employee where department="Finance";

5. Get the top 3 highest-paid employees.
Select first_name, last_name, salary from employee order by salary desc limit 3;

6. Find the department with the minimum average salary.
Select department, avg(salary) AS average_salary from employee group by
department order by average_salary limit 1;

7. Display the total number of employees in each department, ordered by the
number of employees.
Select department, count(emp_id) as no_of_employees from employee group by
department order by no_of_employees;

8. Find the average salary of employees who were hired before 2020.
Select avg(salary) from employee where hire_date<"2020-01-01";

9. List the names of employees in the IT department ordered by hire date, with the
most recently hired employees first.
Select first_name,last_name, hire_date from employee where department="IT"
order by hire_date desc;

10. Find the sum of salaries for all employees hired after January 1, 2019, ordered
by salary.
Select count(emp_id) as no_of_employee,sum(salary) as total_salary from
employee where hire_date>"2019-01-01";

11. Get the employee with the lowest salary in the HR department.
select first_name, last_name, salary from employee where department="HR"
order by salary limit 1;

12. Find the total salary paid to employees in each department, but limit the result
to the top 2 highest-paying departments.
Select department,sum(salary) as total_salary from employee group by
department order by total_salary desc limit 2;

13. List all employees hired after 2018, ordered by salary, and show only the first 4
employees.
Select First_name, last_name, salary, hire_date from employee where
hire_date>"2018-12-31" order by salary limit 4;

14. Find the highest salary in the IT department, but limit the results to the top 1
result.
Select max(salary) as Highest_Salary from employee where department="IT";

15. Get the average salary of employees in each department and list only
departments with an average salary greater than $60,000.
Select department, avg(salary) as avg_salary from employee group by
department having avg_salary>60000;