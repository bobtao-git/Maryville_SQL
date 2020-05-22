

show databases;
drop database if exists db2;
create database db2;

show databases;   # This statement shows the list of databases 
drop database if exists DBEX1;  # This statement drops/deletes the database named DBEx1   
create database DBEX1;  # This statement creates the database named DBEx1 
use DBEX1;  # Use the database DEBx1 we just created 
show tables;  # This statement shows the list of tables in the database DEBx1 

drop table if exists employees;  
drop table if exists employees;  
create table employees(lname varchar(20), idn int, salary decimal(20, 2), deduction decimal(20, 2)); # Create the Employees table 
insert into employees values ('Peter', 1, 1000, 10), ('Mary', 12, 2000, 0), ('Tony', 22, 4000, 32); /* Insert three rows into the Employees table */ 
select * from employees; 

create table highearners as select * from employees where salary > 2500;
 select * from highearners;
 

drop table if exists iras; 
create table iras(idn int, ira_acct varchar(12), balance decimal(20, 2)); 
/* Create the IRAs table */ 
describe iras; 
insert into iras values(1, 'A1', 100), (22, 'A2', 200), (22, 'A3', 400), (93, 'A4', 500);  
select * from iras; 
show tables;




drop table if exists addresscity; 
create table addresscity(idn int, companycity varchar(22), homecity varchar(22) ); 
/* Create the AddressCity table */ 
describe addresscity; 
insert into addresscity values (1, 'Saint Louis', 'Saint Louis'), (12, 'Saint Louis', 'Chesterfield'), (22, 'Chesterfield', 'Saint Louis'), (93, 'Chesterfield', 'Chesterfield'); 
select * from addresscity; 

show tables;
select * from employees;


select e.lname,a.homecity,  sum(balance),count(ira_acct)
from employees e, iras i, addresscity a
where e.idn=i.idn and i.idn=a.idn
group by e.lname,a.homecity;


select * from employees where lname like '%t_%';

drop table x;
create table x (select lname from employees);

select * from x;

select * from addresscity where homecity='chesterfield';

show tables;
select * from employees;
select * from iras;

select lname,salary from employees union select ira_acct,balance from iras;

#select LName,Salary,count(coalesce(IRA_acct,0)), sum(coalesce(Balance,0)) ira_saved 
select LName, Salary,count(IRA_acct),sum(Balance) ira_saved
from employees e left outer join IRAs i
on (e.IDN=i.IDN)
group by LName,e.IDN, Salary
having ira_saved<=3000;

select LName, Deduction, sum(Balance) 
from employees e, IRAs i
where i.IDN=e.IDN
group by LName,Deduction;

select * from employees;
select * from AddressCity;

select CompanyCity, sum(Salary) from AddressCity a left outer join employees e
on(a.IDN=e.IDN) group by CompanyCity;


select e.IDN, sum(Salary) , CompanyCity
from AddressCity a join employees e on (a.IDN=e.IDN)
group by CompanyCity;

#############################
quiz 1
Question 1
Write a query statement to find the records of all employees with a salary of no less than $2500.
Your Answer:
select * from employees where salary >= 2500;


Question 2
Write a query statement to create a table named HighEarners containing the result of the query statement in question 1.
Your Answer:
create table HighEarners select * from employees where salary >=2500;

                                                               
Question 3
Write a query statement to find the minimal, maximal, and total salary of all employees.
Your Answer:
select min(salary) as MinSalary, max(salary) as MaxSalary, sum(salary) as TotalSalary from employees;
                                                               
                                                               
                                                               

#############################                                                               
quiz 2
                                                               
Question 1
Write a query statement to find the salary, and balance of each employee with a salary between $1500 and $4500.
Your Answer:
SELECT
   e.LName
   , e.Salary
   , IFNULL(i.Balance,0) Balance
FROM
   employees e LEFT JOIN
   (SELECT IDN, SUM(Balance) Balance FROM IRAs GROUP BY IDN) i ON e.IDN = i.IDN
WHERE
   e.Salary BETWEEN 1500 and 4500;

 
Question 2
Find the last name, the total amount of ira balance, and number of ira accounts for each people with at most $300 IRA total balance. Summary Query for each people with certain conditions.
Your Answer:
SELECT
   LName
   , SUM(i.Balance) TotalBalance
   , COUNT(i.IRA_acct) IRA_Accounts
FROM
   employees e INNER JOIN
   IRAs i ON e.IDN = i.IDN
GROUP BY
   LName
HAVING
   SUM(i.Balance) <= 300;
                                                               

#############################                                                               
Test1 

Question 1
Find the last name and deduction of each employee with deduction at least $20.00.
Your Answer:
select Lname, Deduction
from employees where Deduction >=20;

 
Question 2
Find the last name, deduction, and balance of each employee with a balance of at least $300.00.
Your Answer:
select Lname, Deduction, Balance
from employees e, iras i
where Balance >=300 and e.idn = i.idn;


Question 3
Find the last name, salary, IRA account balance, and the city name of the living address of each employee with a salary of at least $2,000.00.
Your Answer:
select Lname, Salary, Balance, Homecity
from employees e, iras i, addresscity a
where Salary >=2000 and e.idn = i.idn and i.idn = a.idn;


Question 4
Find the last name, salary, IRA account balance, and the city name of the living address of each employee with a balance between $100 and $400 and a salary of less than $3,000.00.
Your Answer:
select Lname, Salary, IRA_Acct, Balance, Homecity
from employees e, iras i, addresscity a
where (Balance between 100 and 400) and Salary <3000
and e.idn = i.idn and i.idn = a.idn;

 
Question 5
Find the total amount of deduction of all people who work in each city and the city name of the working address.
Your Answer:
select CompanyCity, sum(Deduction) as TotalDeduction
from employees e, addresscity a
where e.idn = a.idn
group by CompanyCity;

 
Question 6
Your Answer:
select Lname, Deduction, sum(Balance) as Total_IRA_Balance
from employees e, iras i
where e.idn = i.idn
group by Lname, Deduction;
 
Question 7
Find the last name, salary, number of ira accounts, and the city name of the living address for each employee.

Your Answer:
select Lname, Salary, count(IRA_Acct) as NumofAccts, Homecity
from employees e, iras i, addresscity a
where e.idn = i.idn and i.idn = a.idn
group by Lname, Salary, Homecity;

 
Question 8
Find the total amount of salary of all people who work in each city together with the working city name.
Your Answer:
select CompanyCity, sum(Salary) as TotalSalary
from addresscity a, employees e
where a.idn = e.idn
group by CompanyCity;

 
Question 9
Find the total amount of balance and the total number of all IRA accounts of those who live in each city together with the living address city name.
Your Answer:
select HomeCity, sum(Balance) as TotalBalance, count(IRA_Acct) as NumofAccts
from addresscity a, iras i
where a.idn = i.idn
group by HomeCity;

Question 10
Find the last name, total amount of ira balance, and total number of ira accounts for each employee with at least $300 of the total amount of ira balance.

Your Answer:
select Lname, sum(Balance) as Total_IRA_Balance, count(IRA_Acct) as NumofAccts
from employees e, iras i
where e.idn = i.idn
group by Lname having Total_IRA_Balance >=300;
                                                               

#############################                                                               
quiz 3
                                                               
Question 1
Write a query to create a table named TEmployees containing all records in the table Employees.
Your Answer:
CREATE TABLE TEmployees
SELECT *
FROM Employees;

 
Question 2
Write a query update statement to give a 15% raise for those employees in the table TEmployees with salary between $1000 and $3000.
Your Answer:
UPDATE TEmployees
SET Salary = 1.15 * Salary
WHERE Salary BETWEEN 1000 AND 3000;

 
Question 3
For the records in the table TEmployees, write a delete statement to delete the records with deductions no more than $20.
Your Answer:
DELETE
FROM TEmployees
WHERE Deduction <= 20;

