-- LINK : https://en.wikibooks.org/wiki/SQL_Exercises/Employee_management
-- 2.1 Select the last name of all employees.
  select lastname from Employees;
-- 2.2 Select the last name of all employees, without duplicates.
  select distinct lastname from Employees;
-- 2.3 Select all the data of employees whose last name is "Smith".
  select * 
  from Employees 
  where lastname = "Smith"
  ;
-- 2.4 Select all the data of employees whose last name is "Smith" or "Doe".
  select *
  from Employees
  where lastname in ("Smith","Doe")
  ;
-- 2.5 Select all the data of employees that work in department 14.
  select *
  from Employees
  where department = 14
  ;
-- 2.6 Select all the data of employees that work in department 37 or department 77.
  select * 
  from Employees
  where department in (37,77)
  ;
-- 2.7 Select all the data of employees whose last name begins with an "S".
  select *
  from Employees
  where lastname like "S%"
  ;
-- 2.8 Select the sum of all the departments' budgets.
  select sum(budgets)
  from Departments
  ;
  
-- 2.9 Select the number of employees in each department (you only need to show the department code and the number of employees).
  select Department,count(*)
  from Employees
  group by Department
  ;
  
-- 2.10 Select all the data of employees, including each employee's department's data.
  select a.*,b.*
  from Employees a 
  join Departments b
  where a.department = b.code
  ;
  select a.*, b.* from Employees a join Departments b on a.department = b.code;
  
-- 2.11 Select the name and last name of each employee, along with the name and budget of the employee's department.
  select a.name,a.lastname,b.budget
  from Employees a
  join Departments b
  on a.department = b.code
  ;
  
  select a.name, a.lastname, b.name Department_name, b.Budget
from Employees a join Departments b
on a.department = b.code;
-- 2.12 Select the name and last name of employees working for departments with a budget greater than $60,000.
-- 2.13 Select the departments with a budget larger than the average budget of all the departments.
-- 2.14 Select the names of departments with more than two employees.
-- 2.15 Very Important - Select the name and last name of employees working for departments with second lowest budget.
-- 2.16  Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11. 
-- And Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
-- 2.17 Reduce the budget of all departments by 10%.
-- 2.18 Reassign all employees from the Research department (code 77) to the IT department (code 14).
-- 2.19 Delete from the table all employees in the IT department (code 14).
-- 2.20 Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
-- 2.21 Delete from the table all employees.
