select * from employees;
/*��� �̸� ��ȭ��ȣ */
select EMPLOYEE_ID,EMP_NAME,PHONE_NUMBER from employees;
select * from person;
insert into person values('james','m','5222553','pyeongtaek');
desc person;
insert into person(name,mobile) values ('ww','555566666');

/*���ݱ����� �۾��� ��������*/
/*������ ������ �����ϱ����� (commit)*/
commit;

delete from person;
rollback;
update person set gender = 'f' where name = 'joh';
update person  set CITY = 'cheonan' where name ='joh';
update person set gender = 'm' where name = 'ww';
update person set NAME = 'smith' where name ='james';
update person set gender = 'm' where name = 'ww';
update person set CITY = 'busan' where name = 'ww';
/*������ m �λ���� �б� */

select * from person where gender = 'm';
/*���ð� õ���� ����� �о���̱� */

select * from person where CITY ='cheonan';

/*������ m�λ���� �̸��� ���� */
select name,CITY from person where gender = 'm';
/*john�̸� ���� */
delete from person where name = 'john';
