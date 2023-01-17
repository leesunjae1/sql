-- where
select employee_id, last_name, department_id
from employees
where department_id = 50;

-- 176�� ����� ���, �̸�, �μ���ȣ�� ��ȸ�϶�
select employee_id, last_name, department_id
from employees
where employee_id = 176;

select employee_id, last_name, department_id
from employees
where last_name = 'Whalen';

select employee_id, last_name, hire_date
from employees
where hire_date = '2008/02/06';

select last_name, salary
from employees
where salary <= 3000;

-- �� $12,000 �̻� ���� ������� �̸�, ������ ��ȸ�϶�

select last_name, salary
from employees
where salary >= 12000;


select last_name, job_id
from employees
where job_id != 'IT_PROG';


select last_name, salary
from employees
where salary between 2500 and 3500;

select last_name
from employees
where last_name between 'King' and 'Smith';

-- 'King' ����� first_name, last_name, ����, ������ ��ȸ�϶�

select first_name, last_name, job_id, salary
from employees
where last_name = 'King';

select last_name, hire_date
from employees
where hire_date between '2002/01/01' and '2002/12/31';

select employee_id, last_name, manager_id
from employees
where manager_id in (100, 101, 201);

select employee_id, last_name, manager_id
from employees
where manager_id = 100 or
    manager_id = 101 or
    manager_id = 201;
    
select employee_id, last_name
from employees
where last_name in ('Hartstein', 'Vargars');

select last_name, hire_date
from employees
where hire_date in ('2003/06/17', '2005/09/21');

select last_name
from employees
where last_name like 'S%';

select last_name
from employees
where last_name like '%r';

-- �̸��� s �� ���Ե� ������� �̸��� ��ȸ�϶�
select last_name
from employees
where last_name like '%s%';

-- 2005�⿡ �Ի��� ������� �̸�, �Ի����� ��ȸ�϶�
select last_name, hire_date
from employees
where hire_date like '2005%';

select last_name
from employees
where last_name like 'K___';

-- �̸��� �ι�° ���ڰ� o �� ����� �̸��� ��ȸ�϶�

select last_name
from employees
where last_name like '_o%';

select job_id
from employees;

select last_name, job_id
from employees
where job_id like 'I_\_%' escape '\';

select last_name, job_id
from employees
where job_id like 'I_[_%' escape '[';

-- ������ _R�� ���Ե� ������� �̸�, ������ ��ȸ�϶�
select last_name, job_id
from employees
where job_id like '%\_R%' escape '\';

select employee_id, last_name, manager_id
from employees;

select last_name, manager_id
from employees
where manager_id = null;

select last_name, manager_id
from employees
where manager_id is null;

select last_name, job_id, salary
from employees
where salary >= 5000 or job_id like '&IT&';

-- ������ $5000 �̻� $12000 �����̴� �׸���,
-- 20���̳� 50�� �μ����� ���ϴ� 
-- ������� �̸�, ����, �μ���ȣ�� ��ȸ�϶�
select last_name, salary, department_id
from employees
where (salary between 5000 and 12000) and 
    department_id in (20, 50);  