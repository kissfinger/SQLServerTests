select * from salary
select * from info

--where 
select Name as '姓名',salary as '月薪' from info a , salary b
where a.SalaryClass = b.SalaryClass


--聚合函数
select MAX(Phone) from info
select MIN(Phone) from info
select COUNT (SalaryClass) from salary
select AVG(Phone) from info
select SUM(Phone) from info

	
--between and 
select * from info where Phone between 13900000000 and 18600000000
	
--like 
select * from info where Name like '陈%'
select * from info where Name like '__'

--in 
select * from info where SalaryClass in ('A','B')
select Name ,salary from info a,salary b
where a.SalaryClass = b.SalaryClass 
	and  a.SalaryClass in (select SalaryClass from salary where salary >= 20000)

--group by 
select Addresse ,count(SalaryClass)from info 
group by Addresse
--如果查询的列没有包含在聚合函数中，那么该列一定要出现在group by 子句后面,否则语法错误
--错误语句：
--select Addresse , SalaryClass, count(Addresse)from info 
--group by Addresse
--正确语句
select Addresse , SalaryClass, count(SalaryClass)from info 
group by Addresse, SalaryClass

--having 
--查询SalaryClass被多于两个人拥有的SalaryClass，Salary
select f.SalaryClass ,s.Salary, COUNT(Name)as 人数
from salary s, info f
where s.SalaryClass = f.SalaryClass 
group by f.SalaryClass, s.Salary
having COUNT(Name) >= 2

 
