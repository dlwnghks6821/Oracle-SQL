--jobs ���̺��� ������ job+history������ ������ ã�Ƽ�
-- �� ���� �̸����� ��ȸ
select *from jobs;
select *from job_history;
select job_title
from jobs a 
where a.job_id not in (select job_id from job_history b);





--����� 1500 �̻� ����� ������ �̸�
--select prod_id , cust_name , channel_id ,employee_id 
--from sales a , customers b 
--where a.cust_id = b.cust_id
 --and b.cust_gender='F';

--select job_id from jobs
--minus
--select job_id from job_history;
--select a.job_id , b.job_title
--from job_history a ,jobs b
--where a.job_id = b.job_id;
--select  cust_name , prod_name,emp_name,channel_desc,quantity_sold,amount_sold
--from sales a, products b, customers c ,channels d, employees e
--where a.prod_id = b.prod_id
--and a.cust_id =c.cust_id
--and a.channel_id = d.channel_id
--and a.employee_id= e.employee_id;
--sales ���̺� --
--select * from sales;
--channels���̺�--
--select * from employees;
--a���̺�� b���̺��� ����� �÷����� ����--
--select a.cust_id,a.prod_id,b.emp_name,a.channel_id
--���� ������ a�� b���̺��� ����Ѵ�--
--from sales a, employees b
--�� ���̺� �� ����Ǵ� �κ��� ������ �־ �����̺��� ��ģ��--
--where a.EMPLOYEE_ID= b.employee_id;


--select  cust_name , prod_name,emp_name,channel_desc,quantity_sold,amount_sold
--from sales a, products b, customers c ,channels d, employees e
--where a.prod_id = b.prod_id
--and a.cust_id =c.cust_id
--and a.channel_id = d.channel_id
--and a.employee_id= e.employee_id;
--sales, products join �Ͽ� cust_id ,prod disc, employee_id ,channel_id
--select a.cust_id,b.prod_desc,a.employee_id,a.channel_id
--from sales a, products b
--where a.prod_id = b.prod_id;
--�����ϴ� ���̺�(�������ִ� ���̺�)--
--select a.cust_id,prod_id,a.employee_id,b.channel_desc
--from sales a, channels b
--sales ���̺�� channels ���̺��� ����Ǵ� �κ��� ã�� --
--where a.CHANNEL_ID= b.CHANNEL_ID;