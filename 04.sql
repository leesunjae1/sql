select hire_date
from employees
where hire_date = '2003/06/17';

select salary
from
employees
where salary = '7000';

select hire_date || ''
from employees;

select salary || ''
from employees;

select to_char(hire_date)
from employees;

select to_char(sysdate, 'yyyy-mm-dd')
from dual;

select to_char(sysdate, 'YEAR MONTH DDsp DAY(DY)')
from dual;

select to_char(sysdate, 'Year Month Ddsp Day(Dy)')
from dual;

select to_char(sysdate, 'd')
from dual;

select last_name, hire_date,
    to_char(hire_date, 'day'),
    to_char(hire_date, 'd')
from employees;

--�� ���̺��� �����Ϻ��� �Ի��ϼ� �������� �����϶�
select last_name, hire_date,
    to_char(hire_date, 'day') day
from employees
order by to_char(hire_date - 1, 'd') asc , hire_date;

select to_char(sysdate,'hh24:mi:ss am')
from dual;

select to_char(sysdate, 'DD "of" Month')
from dual;

select to_char(hire_date, 'fmDD Month YY') --fill mode
from employees;

--������� �̸�, �Ի���, �λ������� ��ȸ�϶�
--�λ������� �Ի��� �� 3���� �� ù��° �������̴�
--��¥�� YYYY.MM.DD�� ǥ���Ѵ�
select last_name, hire_date, 
        add_months(hire_date, 3)
        to_char(sysdate, 'YYYY.MM.DD')
from employees;
