ALTER TABLE departments 
ADD dept_no VARCHAR (5) NOT NULL,
ADD dept_name VARCHAR (20) NOT NULL
;
SELECT * 
FROM departments;

ALTER TABLE dept_emp
ADD emp_no INTEGER NOT NULL,
ADD dept_no VARCHAR (5) NOT NULL
;

SELECT * FROM departments
ALTER TABLE dept_manager
ADD dept_no VARCHAR (10) NOT NULL,
ADD emp_no INTEGER NOT NULL
;

SELECT * from dept_emp


ALTER TABLE employees
ADD emp_no INTEGER NOT NULL,
ADD emp_title_id VARCHAR (10) NOT NULL,
ADD birth_date DATE,
ADD first_name VARCHAR (14) NOT NULL,
ADD last_name VARCHAR (14) NOT NULL,
ADD sex VARCHAR (10) NOT NULL,
ADD hire_date DATE
;

ALTER TABLE employees
ALTER COLUMN sex VARCHAR (10) NOT NULL
;

ALTER TABLE employees
ALTER COLUMN sex SET DEFAULT 0;
ALTER TABLE employees ALTER COLUMN sex TYPE VARCHAR;

SELECT
	CAST ('SEX' AS VARCHAR);

ALTER TABLE employees
ADD emp_no INTEGER NOT NULL,
ADD emp_title_id VARCHAR (10) NOT NULL,
ADD birth_date DATE,
ADD first_name VARCHAR (14) NOT NULL,
ADD last_name VARCHAR (14) NOT NULL,
ADD sex VARCHAR (10) NOT NULL,
ADD hire_date DATE
;

ALTER TABLE employees
ADD emp_no INTEGER NOT NULL,
ADD emp_title_id VARCHAR (10) NOT NULL,
ADD birth_date DATE,
ADD first_name VARCHAR (12) NOT NULL,
ADD last_name VARCHAR (12) NOT NULL,
ADD sex VARCHAR (10) NOT NULL,
ADD hire_date DATE
;

ALTER TABLE employees
ADD emp_no INTEGER NOT NULL,
ADD emp_title_id VARCHAR (10) NOT NULL,
ADD birth_date DATE,
ADD first_name VARCHAR (15) NOT NULL,
ADD last_name VARCHAR (15) NOT NULL,
ADD sex VARCHAR (5) NOT NULL,
ADD hire_date DATE
;

ALTER TABLE employees
ADD emp_no INTEGER NOT NULL,
ADD emp_title_id VARCHAR (10) NOT NULL,
ADD birth_date DATE,
ADD first_name VARCHAR (20) NOT NULL,
ADD last_name VARCHAR (20) NOT NULL,
ADD sex VARCHAR (10) NOT NULL,
ADD hire_date DATE
;

ALTER TABLE salaries
ADD emp_no INTEGER NOT NULL,
ADD salary MONEY
;

ALTER TABLE titles
ADD title_id VARCHAR (5) NOT NULL,
ADD title VARCHAR (20) NOT NULL
;

--Question 1
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no;


--Question 2
SELECT first_name, last_name, hire_date
FROM EMPLOYEES
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--Question 3
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from departments as d
left join dept_manager as m
on d.dept_no = m.dept_no
left join employees as e
on m.emp_no = e.emp_no;

--Question 4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_emp as de
left join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no;

--Question 5
SELECT first_name, last_name, sex
FROM EMPLOYEES
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--Question 6
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_emp as de on 
e.emp_no = de.emp_no
left join departments as d on 
de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--Question 7
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_emp as de on 
e.emp_no = de.emp_no
left join departments as d on 
de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';



--Question 8
SELECT last_name AS "LAST NAME",
COUNT(last_name) AS "FREQUENCY OF EMPLOYESS LAST NAMES"
FROM EMPLOYEES
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
