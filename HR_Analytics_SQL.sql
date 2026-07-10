CREATE DATABASE hr_analytics;
USE hr_analytics;
SELECT COUNT(*) AS Total_Employees
FROM employees;
DROP TABLE employees;

DROP TABLE department;
SELECT COUNT(*)
FROM employees;
SELECT * FROM employees;
SELECT * FROM department;
SELECT * FROM job_roles;
SELECT * FROM location;
DROP TABLE employees;
SELECT Employee_ID,Employee_Name
FROM employees;
SELECT Employee_Name
FROM employees;
DESCRIBE department;
DROP TABLE job_roles;
USE hr_analytics;
SELECT * FROM EMPLOYEES;
SELECT * FROM  department;
SELECT * FROM job_roles;
SELECT * FROM location;
SELECT Employee_ID, Employee_Name, Department_ID,Salary
FROM employees;
SELECT Department_ID,Department_Name
FROM DEPARTMENT;
SELECT DISTINCT Education
FROM Employees;
SELECT DISTINCT Work_Mode
FROM employees;
SELECT EMPLOYEE_NAME,SALARY
FROM employees
WHERE Salary>100000;
select * from employees;
SELECT Employee_Name
FROM employees
WHERE Attrition="yes";
SELECT Employee_Name,Age
FROM employees
WHERE Age>40;
SELECT Employee_Name
FROM employees
WHERE Hire_Date=01/01/2023;
SELECT Employee_Name,Salary
FROM employees
ORDER BY Salary desc
Limit 10;
SELECT COUNT(*)
FROM employees;
SELECT Gender,COUNT(Gender) AS Gender;
SELECT * FROM EMPLOYEES;
SELECT DEPARTMENT_ID,COUNT(EMPLOYEE_ID) AS EMPLOYEES_1
FROM EMPLOYEES
GROUP BY 1
ORDER BY 1;
-- Find the average salary of all employees.
SELECT AVG(Salary) 
FROM employees;
SELECT MAX(Salary)
FROM Employees;
SELECT MIN(SALARY)
FROM Employees;
SELECT SUM(Salary)
FROM EMPLOYEES;
SELECT AVG(Age)
FROM employees;
SELECT ROUND(AVG(Experience),0)
FROM employees;
SELECT AVG(performance_rating)
FROM EMPLOYEES;
SELECT Department_ID,AVG(Salary)
FROM Employees
group by 1;
SELECT Education,COUNT(Employee_ID)
FROM Employees
GROUP BY 1;
SELECT * FROM EMPLOYEES;
SELECT Work_Mode,COUNT(Employee_ID)
FROM EMPLOYEES
GROUP BY 1;
SELECT Department_ID,ROUND(AVG(Experience),0) AS EXP

FROM employees
GROUP BY 1
ORDER BY 1;
SELECT Department_ID,AVG(Performance_Rating) AS Rating
FROM employees
GROUP BY 1
ORDER BY 1;
SELECT Department_ID,COUNT(Employee_ID) AS Employee_Count
FROM Employees
GROUP BY 1
HAVING Employee_Count>90
ORDER BY 1;
-- Display departments whose average salary is greater than ₹100,000.
SELECT Department_ID,AVG(Salary)
FROM Employees
GROUP BY 1;
-- Display education qualifications having more than 150 employees.
SELECT * FROM EMPLOYEES;
SELECT Education,COUNT(EMPLOYEE_ID) AS EDU
FROM employees
GROUP BY 1
HAVING EDU>150;
-- Display work modes having more than 300 employees.
SELECT Work_Mode,COUNT(EMPLOYEE_ID) AS WMODE
FROM employees
GROUP BY 1
HAVING WMODE>300;
SELECT Employee_ID,Employee_Name,Salary
FROM employees
WHERE Salary BETWEEN 80000 AND 120000;
SELECT Employee_Name,Age
FROM employees
WHERE Age BETWEEN 30 AND 40;
SELECT EMPLOYEE_ID,EDUCATION,GENDER
FROM employees
WHERE EDUCATION='MBA'AND GENDER='Female';
SELECT *
FROM EMPLOYEES
WHERE Gender='Male' AND Work_Mode='Remote';
SELECT EMPLOYEE_NAME
FROM EMPLOYEES
WHERE EXPERIENCE>10;
SELECT * FROM EMPLOYEES;
SELECT Marital_Status,salary,employee_id
FROM Employees
WHERE Marital_Status='married'AND Salary>120000;
-- Display employee names along with their department names.
SELECT * FROM Employees;
SELECT * FROM DEPARTMENT;
SELECT  e.Departement_ID,e.employee_name,d.department_name
FROM employees e
JOIN department d ON e.Departement_ID=d.Departement_ID;
SELECT E.EMPLOYEE_NAME,
       D.DEPARTMENT_NAME
FROM EMPLOYEES E
INNER JOIN DEPARTMENT D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;
SELECT E.EMPLOYEE_NAME,
D.DEPARTMENT_NAME
FROM EMPLOYEES E
JOIN DEPARTMENT D ON E.DEPARTMENT_ID=D.DEPARTMENT_ID;
SELECT * FROM JOB_rOLES;
SELECT * FROM employees;
SELECT e.Employee_Name,j.Job_Role
FROM job_roles j
JOIN employees e ON j.Role_ID=e.Role_ID; 
select * from location;
SELECT * FROM DEPARTMENT;
SHOW CREATE TABLE employees;
-- Display employee names along with their city names.
SELECT e.Employee_Name,d.Department_ID
FROM department d
JOIN employees e ON d.Department_ID=e.Department_ID
UNION
SELECT d.Department_ID,l.City
FROM department D
JOIN location l ON l.Location_ID=d.Location_ID;
SELECT e.Employee_Name,l.City
FROM employees e
JOIN department d ON d.department_ID=e.department_ID
JOIN location l ON l.Location_ID=d.Location_ID;
SELECT d.Department_Name,COUNT(e.Employee_ID) AS Emp_Count
FROM employees e
JOIN department d ON d.Department_ID=e.Department_ID
GROUP BY 1;
SELECT d.Department_Name,AVG(Salary)
FROM employees e
JOIN department d ON d.Department_ID=e.Department_ID
GROUP BY 1
ORDER BY 1 desc;
SELECT d.Department_Name,COUNT(e.Employee_ID) 
FROM employees e
JOIN department d ON d.Department_ID=e.Department_ID
GROUP BY 1
ORDER BY 1 desc;
SELECT l.City,COUNT(e.Employee_ID) AS Emp_Count
FROM employees e
JOIN department d ON d.Department_ID=e.Department_ID
JOIN location l ON l.Location_ID=d.Location_ID
GROUP BY 1
ORDER BY  Emp_Count DESC;
