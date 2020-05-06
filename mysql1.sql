

show databases;
drop database if exists db2;
create database db2;

show databases;   # This statement shows the list of databases 
drop database if exists DBEx1;  # This statement drops/deletes the database named DBEx1   
create database DBEx1;  # This statement creates the database named DBEx1 
use DBEx1;  -- Use the database DEBx1 we just create
d 
show tables;  # This statement shows the list of tables in the database DEBx1 

drop table if exists employees;  
drop table if exists Employees;  
create table employees(LName varchar(20), IDN int, Salary decimal(20, 2), Deduction decimal(20, 2)); # Create the Employees table 
insert into employees values ('Peter', 1, 1000, 10), ('Mary', 12, 2000, 0), ('Tony', 22, 4000, 32); /* Insert three rows into the Employees table */ 
select * from employees; 

create table HighEarners as select * from employees where Salary > 2500;
 select * from HighEarners;
 

drop table if exists IRAs; 
create table IRAs(IDN int, 
IRA_acct varchar(12), 
Balance decimal(20, 2)); 
/* Create the IRAs table */ 
describe IRAs; 
insert into IRAs values(1, 'A1', 100), (22, 'A2', 200), (22, 'A3', 400), (93, 'A4', 500);  
select * from IRAs; 
show tables;




drop table if exists AddressCity; 
create table AddressCity(IDN int, CompanyCity varchar(22), HomeCity varchar(22) ); 
/* Create the AddressCity table */ 
describe AddressCity; 
insert into AddressCity values (1, 'Saint Louis', 'Saint Louis'), (12, 'Saint Louis', 'Chesterfield'), (22, 'Chesterfield', 'Saint Louis'), (93, 'Chesterfield', 'Chesterfield'); 
select * from AddressCity; 

show tables;
select * from employees;


select e.LName,a.HomeCity,  sum(Balance),count(IRA_acct)
from employees e, IRAs i, AddressCity a
where e.IDN=i.IDN and i.IDN=a.IDN
group by e.LName,a.HomeCity;


select * from employees where LName like '%t_%';

drop table x;
create table x (select LName from employees);

select * from x;

select * from AddressCity where HomeCity='chesterfield';

show tables;
select * from employees;
select * from IRAs;

select LName,Salary from employees union select IRA_acct,Balance from IRAs;

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
