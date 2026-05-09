create database companydb;

use companydb;

create table employee(
	employee_id int primary key,
    employee_name varchar(50),
    employee_salary int,
    employee_age int,
    employee_department varchar(50)
    );
    
    insert into employee values 
    (1,"Rohan",50000,24,"Sales"),
	(2,"Rahul",55000,23,"HR"),
    (3,"Raj",58000,25,"Marketing"),
    (4,"Ram",60000,24,"Finance"),
	(5,"Rohit",53000,26,"IT");
       
           select * from employee
limit 2;
       
         select * from employee
order by employee_salary asc;
       
        select * from employee
order by employee_salary desc;
       
          select * from employee
    where employee_department in ("Sales","IT","HR"); 
       
       select * from employee
    where employee_salary between 55000 and 58000;
       
          select * from employee
    where not employee_department="Sales";
    
       select * from employee
    where employee_department="Sales" or employee_department="IT";
    
    
    select * from employee
    where employee_department="Sales" and employee_salary>49000;
    
     select * from employee
		where employee_salary>55000;
        
         select * from employee
		where employee_age>24;
        
        
