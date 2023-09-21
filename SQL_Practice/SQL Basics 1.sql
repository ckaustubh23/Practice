select * from kc.students;

select FName, LName from kc.students 
where City in ("Mumbai");

create table kc.emp(
empID int not null auto_increment,
Name varchar(25),
Address varchar (30),
City char(20),
Salary int,
primary key (empID)
);

insert into kc.emp(Name, Address, City, Salary)
Values("Devendra Chaturvedi","2004, Imperial Heights","Thane",350000);
USE kc;
select * from emp;

-- smaller than equal to comparison operator
select Name, City from kc.emp where salary <= 60000;

-- using the keyword BETWEEN for the range
select Name, City from kc.emp where salary between 60000 and 80000;

-- printing the exact keyword
select Name, Address, City from kc.emp where salary = 80000;

-- % is the 
select * from kc.emp where city like '%i';

Select Case (City)
when 'Bhopal' then 'Madhya Pradesh'
when 'Lucknow' then 'Uttar Pradesh'
when 'Thane' then 'Maharashtra'
else 'No Idea'
END
from kc.emp;

create table kc.emp_info(
EmpID int not null auto_increment,
Name char(20),
Contact_Number bigint(15),
Email_ID varchar(30),
Address varchar(50),
City varchar(20),
Department varchar (30),
Salary int,
primary key(EmpID)
);
Select * from kc.emp_info;

insert into kc.emp_info(Name, Contact_Number, Email_ID, Address, City, Department, Salary)
Values("Vidhi Shah",9137339611,"vidhi.a.shah@slrtce.in","Kandivali East","Mumbai","IT",40000);

update kc.emp_info
SET City = Null
Where EmpID = 7;

-- Triggers
-- Insert Trigger
select * from kc.students;

USE kc;
CREATE TRIGGER sample_trigger
before insert
on students
For each row
SET new.Marks = new.Marks + 50; 

select * from students;
insert into students(FName, LName, Address, City, Marks, Batch, Performance)
Values("Jaiveer","Singh", "Imperial Heights","Thane",450,Null,Null);

select * from emp;

create table Projects(
ProjectID int,
empID int,
ClientID int,
ProjectName varchar(10),
ProjectStartDate date
);

insert into Projects(ProjectID, empID, ClientID, ProjectName, ProjectStartDate)
values(555, 5, 7, 'Project4', '2019-05-23');

select * from projects;
select * from emp;

-- Inner join
select emp.empID, emp.Name, emp.City, projects.ProjectID, projects.ProjectName
From emp
INNER JOIN projects on emp.empID = projects.empID;
-- gives the selective ones which are present in both the tables

-- Left Join
select emp.empID, emp.Name,emp.Address,emp.City,emp.Salary, projects.ProjectStartDate
From emp
Left join projects on emp.empID = projects.empID;
-- gives all the values for the columns from both the tables
-- records not having any defined values shows the values as null

-- Right Join
select projects.ClientID,projects.ProjectID,projects.ProjectName, projects.ProjectStartDate
From emp
Right join projects on emp.empID = projects.empID;

-- Full Join
-- MySql doesnt has Full join kind of keyword so we can basically join Left Join and Right Join with a UNION Keyword
select emp.empID, emp.Name,emp.Address,emp.City,emp.Salary,projects.ProjectID, projects.ProjectName, projects.ProjectStartDate
From emp
Left join projects on emp.empID = projects.empID
UNION
select emp.empID, emp.Name,emp.Address,emp.City,emp.Salary,projects.ProjectID, projects.ProjectName, projects.ProjectStartDate
From emp
Right join projects on emp.empID = projects.empID;

