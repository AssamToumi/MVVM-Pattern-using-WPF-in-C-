use MvvmDb

create table Employees 
(
Id int not null,
Name varchar(30) not null,
Age int not null,
constraint pk_Employees primary key(Id)
)

create procedure udp_SelectAllEmployees
as
select * from Employees

alter procedure udp_SelectEmployeeBy
(
@Id int 
)
as 

select * from Employees where Id=@Id

create procedure udp_InsertEmployee
(
@Id int, 
@Name varchar(30),
@Age int
)
as 
insert into Employees values (@Id,@Name,@Age)

create procedure udp_UpdateEmployee
(
@Id int,
@Name varchar(30),
@Age int 
)
as update Employees set Name=@Name , Age=@Age where Id=@Id

create procedure udp_DeleteEmployee
(
@Id int,
@Name varchar(30),
@Age int 
)
as
delete from Employees where Id=@Id