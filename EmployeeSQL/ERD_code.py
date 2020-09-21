Departments
rel Dept_manager
rel Dept_emp
-
dept_no PK varchar(30)
dept_name varchar(30)

Employees
rel Salaries
rel Dept_manager
rel Titles
rel Dept_emp
-
emp_no PK int
title_id varchar(30)
birth_date date
first_name varchar(35)
last_name varchar(35)
sex varchar(1)
hire_date date

Dept_emp
-
emp_no int
dept_no varchar(30)

Dept_manager
-
dept_no varchar(30)
emp_no int

Salaries
-
emp_no int
salary int

Titles
-
title_id PK varchar(35)
title varchar(35)
