

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
