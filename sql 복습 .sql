select count(salary)
from employees
where manager_id is not null;
--null ���� ���� �÷��� count �����ʴ´�.--
drop table human;
insert into person select * from human;
select count(*)from person;
create table human as select * from person;
--���̺��̸� �ٲܶ�--
rename  person to human;

select sum(salary) from employees
where salay>=10000;
select round (avg(salary)) from employees;
select max(salary),min(salary) from employees;

select variance(salary),stddev(salary)
from employees;


select salary,count(*)from employees
group by salary  having count(*) >3
order by salary;
 
select * from customers;
         --����--        --���� --        --Ŀ���͸� ��� ���̺��� ��� ���� ���� --
select CUST_YEAR_OF_BIRTH,CUST_GENDER,count (*) from customers
-- ����   , ������ �׷�ȭ �Ѵ� --
group by CUST_YEAR_OF_BIRTH,CUST_GENDER
--������������ ���� --
order by CUST_YEAR_OF_BIRTH
,CUST_GENDER;
--����⵵�� ȸ������ ��ȸ--

select * from employees;
--�� �Ŵ����� ������������ �����հ� ��ȸ--
select  department_id ,sum(SALARY)from employees
group by department_id
having sum(salary)>20000
order by department_id;
--�ȸ����� ������ �Ѿ��� ���Ҽ����� �Ѵ� �������� �̹� �� ���� ��밡��--
select PROD_ID,sum(QUANTITY_SOLD),
to_char(sum(amount_sold),'999,999,999,999,999.99')
from sales
group by PROD_ID
order by PROD_ID;





select goods from exps where country='�ѱ�'  
union
select goods from exps where country='�Ϻ�'
order by goods;
--�� sql ���� ��ȸ �÷��� ���ڿ� Ÿ���� �����ؾ��Ѵ� 
    

select * from products;
select * from countries;

select distinct salary
from employees
group by salary`
 order by salary;
 select distinct prod_id from products
 minus
 select distinct prod_id from sales
 order by prod_id;
 select * from employees;
 select count(*)
 from employees;
 select min(salary),max(salary) from  employees;
 select email,sum(salary) from employees
 group By email
 order by email;
 select period,region,sum(loan_jan_amt)totl_jan
 from kor_loan_status
 where period = ('201311')

 group by period,region
 having sum(loan_jan_amt)>10000
 order by region;
 
select * from employees
where salary >5000;
select employee_id , emp_name 
from employees
where salary > 5000 
order by employee_id ;
select employee_id , emp_name,job_id
from employees
where salary >5000
and job_id ='IT_PROG'
order by employee_id;
create table si(
name varchar(20) not null,
gender char(1)


);
insert into si(name,gender)
values('lee','f');
 select * from si ;
 
 
 
 create table ex3_2(
 emp_id number ,
 emp_name varchar(100)
 
 
 );
 
insert into ex3_2(emp_id,emp_name)
select employee_id,emp_name
from employees 
where salary>5000;


select * from ex3_2;

select *
from ex3_1;



select emp_name 
from employees
where emp_name LIKE'A%'
order by emp_name;



create table ex3_6(
emplyoee number ,
name varchar(20) not null,
salary number, 
manager number



);


insert into ex3_6(emplyoee,name,salary,manager)
values(124,'lee',2400,100);

select name , salary from
ex3_6;


select employee_id, salary
from employees
where salary>2000 and salary<2500
order by employee_id;



select * from human ;
alter table human add birthday char(8);
update human
set BIRTHDAY ='2000521'
where name = 'jane';



delete from human 
where name = 'ww';
rollback;
commit;
create table h_1(
gender Char(1)
);

truncate table h_1;

select * from  h_1 ;
drop table h_1;

select mod(5,3)
from dual;


select initcap('string')
from dual;

select concat('hello','world')
from dual;

select substr('abcdefg',1,4)
from dual;


select replace('����ѽ����� ���������� ��� ����Ǽ�','��','��')
from dual;

select sysdate,systimestamp

from dual;
select to_number('123456')
from dual;

select  manager_id,employee_id
from employees
where manager_id is null;
select count(*)
from employees;
select sum(salary)
from employees;

select department_id,sum(salary)
from employees
group by department_id
order by department_id;


select period,region,sum(loan_jan_amt)totl_jan
from kor_loan_status
where period ='201311'
group by period,region
having sum(loan_jan_amt)>100000
order by  region;