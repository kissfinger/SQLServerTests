select * from salary
select * from info

--where 
select Name as '����',salary as '��н' from info a , salary b
where a.SalaryClass = b.SalaryClass


--�ۺϺ���
select MAX(Phone) from info
select MIN(Phone) from info
select COUNT (SalaryClass) from salary
select AVG(Phone) from info
select SUM(Phone) from info

	
--between and 
select * from info where Phone between 13900000000 and 18600000000
	
--like 
select * from info where Name like '��%'
select * from info where Name like '__'

--in 
select * from info where SalaryClass in ('A','B')
select Name ,salary from info a,salary b
where a.SalaryClass = b.SalaryClass 
	and  a.SalaryClass in (select SalaryClass from salary where salary >= 20000)

--group by 
select Addresse ,count(SalaryClass)from info 
group by Addresse
--�����ѯ����û�а����ھۺϺ����У���ô����һ��Ҫ������group by �Ӿ����,�����﷨����
--������䣺
--select Addresse , SalaryClass, count(Addresse)from info 
--group by Addresse
--��ȷ���
select Addresse , SalaryClass, count(SalaryClass)from info 
group by Addresse, SalaryClass

--having 
--��ѯSalaryClass������������ӵ�е�SalaryClass��Salary
select f.SalaryClass ,s.Salary, COUNT(Name)as ����
from salary s, info f
where s.SalaryClass = f.SalaryClass 
group by f.SalaryClass, s.Salary
having COUNT(Name) >= 2

 
