--group function
select avg(salary), max(salary), min(salary), sum(salary)
from employees;

select min(hire_date), max(hire_date)
from employees;

-- 최고월급과 최소월급의 차액을 조회하라
select max(salary) - min(salary) 
from employees;

select count(*)  -- count(*) 모든low의 갯수  
from employees;

-- 70번 부서원이 몇명인 지 조회하라
select count(*)
from employees
where department_id = 70;

select count(employee_id)
from employees;

select count(manager_id)
from employees;

select avg(commission_pct)
from employees;

-- 조직의 평균 커미션율을 조회하라
select avg(nvl(commission_pct, 0))
from employees;

select avg(salary)
from employees;

select avg(distinct salary)
from employees;

-- 직원이 배치된 부서 개수를 조회하라.
select count(distinct employee_id)
from employees;

