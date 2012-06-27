create table salary
(
	SalaryClass char not null,
	Salary int not null,
	
	constraint pk_salary primary key(SalaryClass),
)
Go



create table info 
(
	NameID int not null IDENTITY(1,1),
	Name varchar(20) not null,
	Phone bigint default 15901009000,
	Addresse varchar(20),
	AddDate date default GETDATE(),
	Gender varchar(2) default 'ÄÐ',
	SalaryClass char ,
	
	constraint ck_gender check (Gender = 'ÄÐ' or Gender = 'Å®'),
	constraint pk_info primary key (NameID),
	constraint rf_salaryclass foreign key (SalaryClass) references salary(SalaryClass),
) 
Go

select * from salary
Go

select * from info
Go

insert into info
	(Name,Addresse)
values
	('Steve Chiu','Beihang Univ.')
GO

insert into info 
	(Name, Gender,Phone,Addresse,AddDate,SalaryClass)
values 
	('Creolophus','ÄÐ','15901019001','Beijing','2012-06-21','B')
Go

select * from info
Go


insert into salary
	(SalaryClass,Salary)
values
	('A',30000)
Go

insert into salary
	(SalaryClass,Salary)
values
	('B',20000)
Go
insert into salary
	(SalaryClass,Salary)
values
	('C',10000)
Go
insert into salary
	(SalaryClass,Salary)
values
	('D',6000)
Go

select * from salary
Go

select * from info
Go

update info  
	set SalaryClass = 'A'
where NameID = 3
Go

select * from salary
Go

select * from info
Go


delete from info
Go