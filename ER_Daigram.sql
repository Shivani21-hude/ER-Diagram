-- Implemet ER-Diagram
use CustomerInfo

--create a table as Company
create table Company(
Company_ID int identity(1,1) primary key,
Campany_Name varchar(100)
)
--insert values in table
insert into Company values
('Google'),
('Amazon'),
('Flipcart')

--create table ..here use foreign key join the table
create table Employee(
Employee_ID int identity(1,1) primary key,
Employee_Name varchar(100),
Salary money,
JoiningDate date
Foreign key (Employee_ID) references Company(Company_ID)
)

--insert values in Employee table
insert into Employee (Salary,Employee_Name,JoiningDate) values
(30000,'Rinku','10-02-2020'),
(40000,'Sejal','01-05-2022')

select * from Employee


select Employee.Employee_ID,Company.Campany_Name,Employee.Employee_Name,Employee.JoiningDate,Employee.JoiningDate
from Company
Inner join Employee on Employee.Employee_ID=Company.Company_ID

