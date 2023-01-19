--group function
select avg(salary), max(salary), min(salary), sum(salary)
from employees;

select min(hire_date), max(hire_date)
from employees;

-- �ְ���ް� �ּҿ����� ������ ��ȸ�϶�
select max(salary) - min(salary) 
from employees;

select count(*)  -- count(*) ���low�� ����  
from employees;

-- 70�� �μ����� ����� �� ��ȸ�϶�
select count(*)
from employees
where department_id = 70;

select count(employee_id)
from employees;

select count(manager_id)
from employees;

select avg(commission_pct)
from employees;

-- ������ ��� Ŀ�̼����� ��ȸ�϶�
select avg(nvl(commission_pct, 0))
from employees;

select avg(salary)
from employees;

select avg(distinct salary)
from employees;

-- ������ ��ġ�� �μ� ������ ��ȸ�϶�.
select count(distinct employee_id)
from employees;

