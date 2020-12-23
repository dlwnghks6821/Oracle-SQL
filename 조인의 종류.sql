

/*
������ �����ͺ��̽� �����ϱ� 
1) ���� ���� : ������ �����ͺ��̽� ������ �⺻���� ������ϳ��� , ���̺���̸� �������ִ� ����̴� 
inner ���ΰ� outter������ ���� 

inner join 
1)�������� :where ������ ��ȣ �����ڸ� ����� �ΰ��̻��� ���̺��̳� �並 ���� 
2)�������� :���������� �����ϴ� �����͸� ���� �ϴ� ��� 
3)��Ƽ���� : ���������� ���� �����͸� �����ϴ� ��� 
4)�������� : ���δٸ� �����̺��� �ƴ� ������ ���̺��� ����� �����ϴ� ����� ���� 
*/
select a.employee_id,a.emp_name,a.department_id, b.department_name
from employees a,
    departments b
where a.department_id = b.department_id;
/*==>���� �������� ������ where ������ ������� ����(��������)������ �� ���̻� ���̺�, �並��
�ϳ��� ��ġ�� ���� inner������ ���������̶�� �Ѵ�.

*/
select department_id, department_name
from departments a
where exists(select * from employees b);
/*=>�������� ==> ������������ �����ϴ� �����͸� �����ϴ� ��� 
*/
select a.employee_id, a.emp_name, a.department_id, b.department_name
from employees a,
departments b
where a.department_id = b.department_id
and a.department_id not in( select department_id 
                            from departments
                            where manager_id is null);
/*==> ��Ƽ���� ==> �������� ���� ���� �����͸� ������������ �����ϴ� ��� 
==> �������ΰ� �ݴ� �� not in , not exist �� ��� 
/*�������� 
*/
select a.employee_id, a.emp_name,b.employee_id ,b.emp_name,a.department_id
    from employees a,
    employees b
    where a.employee_id < b.employee_id
    and a.department_id = b.department_id
    and a.department_id = 20;
/*������ ���̺��� ����ؼ� �����ϴ� ��� 

    




