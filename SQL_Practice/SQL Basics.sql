-- creating database
create database kc;

-- creating a table
create table kc.students(
ID int not null auto_increment,
FName char(10),
LName char(10),
Address varchar(30),
City char(10),
Marks int (10),
Batch int (10),
Performance varchar(10),
primary key (ID)
);

-- inserting values
INSERT INTO kc.students(Fname, LName, Address, City, Marks, Batch, Performance)
Values("Mukesh","Rathi", "Dahisar","Mumbai", 200, 2023, "Poor");

-- printing the table from database
Select * from kc.students;

-- WHERE Condition
SELECT FName 
From kc.students
WHERE Address = "Dahisar East";

-- AND Condition executes only when both condition works
Select * from kc.students
Where Address = "Dahisar East" AND City = "Mumbai";

-- OR Condition executes when any one of the condition works
Select * from kc.students
Where Address = "Dahisar West" OR Performance = "Poor";

-- NOT Condition where executes rest of the condition
Select * from kc.students
Where Not LName = "Joseph";

Select * from kc.students;

-- counting the total tuple entries
Select count(ID)
From kc.students;

Select * from kc.students;

-- calculating the average of a column / entities
Select avg(Marks)
From kc.students;

-- calculating the sum
Select sum(Marks)
From kc.students;

-- calculating the max
Select max(Marks) as MaxMarks
From kc.students;

-- counting using Group to segregate through particular column
Select Count(ID), Batch
From kc.students
Group by Batch;

-- using HAVING Function for range less than 300
Select FName, Sum(Marks)
From kc.students
Group by FName
having Sum(Marks)>300;

-- descending order by Batch Column
select count(ID), Batch
from kc.students
group by Batch
order by Batch desc;

-- printing the factors having null values
select FName, LName
from kc.students
Where Marks is null;

-- printing the factors not having null values
select FName, LName
from kc.students
Where Marks is not null;

-- updating the Marks Column value using the ID Serial
Update kc.students
SET Marks = 280
Where ID = 9;

Select * from kc.students;

-- deleting the tuple using the primary key column
delete from kc.students
where ID = 5;

-- using IN function 
Select ID, FName, LName
from kc.students
where Batch IN (2020,2021);

-- using the BETWEEN Function with start and end range
Select ID, FName, LName, Marks
From kc.students
Where Marks Between 250 and 400;

-- changing the column name using ALLIASES
select ID as student_id 		
from kc.students;

-- changing column name using ALLIASES
select emp.FName, emp.LName
from kc.students as emp;
 
