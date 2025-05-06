create database EmployeeManagement;
use EmployeeManagement;
create table Employee(
ID int primary key auto_increment not null,
Name Varchar(50) not null,
Salary int not null,
Joining_Date date not null,
Position Varchar(50) not null
) ;
insert into Employee(Name,Salary,Joining_Date,Position)
values("Salman",50000,"2015-2-2","Manager"),
("Ibrahim",200000,"1990-5-3","CEO"),
("Asim",50000,"	2017-4-4","Manager"),
("Ghazanfer",50000,"2015-10-8","Manager"),
("Saima",100000,"2000-5-4","MD");

truncate table employee;    -- to clear data of table 
drop table employee;  -- to delete table
drop database EmployeeManagement; -- to delete database


alter table employee auto_increment = 10234;  -- to set auto incremenmt manually

create table Bank_Account_table(
Acc_ID int primary key auto_increment not null,
Name Varchar(50) not null,
Amount int not null,
Creation_Date date not null,
Emp_id int
) ;
alter table Bank_Account_table add foreign key(Emp_id) references employee(ID);   -- make foreign key
alter table employee add column address varchar(50); -- to add new column 
alter table employee modify salary bigint; -- to change the data type
alter table employee change Joining_Date J_date date; -- to change column name 
alter table employee drop address; -- to drop column 
alter table employee modify salary bigint after J_date; -- to swap the column places 
alter table bank_account_table drop foreign key bank_account_table_ibfk_1;
rename table employee to new_emp; -- to rename the table name 

-- where clause (update,delete command)
update new_emp set position = 'HOD' where ID= 10234;
delete from new_emp where ID= 10236;

-- select
select * from new_emp;
select name ,j_date from new_emp;
select * from new_emp where name = 'salman';
select * from new_emp where salary >=50000;
select * from new_emp where salary <=50000;
select * from new_emp where salary >50000;
select * from new_emp where salary < 50000;
select * from new_emp where salary!=50000;
select * from new_emp where salary <> 50000;  -- not equals

-- AND OR BETWEEN IN
select * from new_emp where position ='CEO' AND salary >=50000;
select * from new_emp where j_date ='1990-05-03' OR position ='manager';
select * from new_emp where salary between 50000 AND 100000;
select * from new_emp where salary NOT between 50000 AND 100000;
select * from new_emp where position IN('CEO','HOD','MD');
select * from new_emp where position NOT IN('CEO','HOD','MD');

-- LIKE OPERATOR
select * from new_emp where name like 's%';
select * from new_emp where name like '%a';
select * from new_emp where j_date like '%02%';
select * from new_emp where name like '%al%';
select * from new_emp where name like 's%n';
select * from new_emp where name like '_a%';
select * from new_emp where name like '____a%';
select * from new_emp where name like '_al%';