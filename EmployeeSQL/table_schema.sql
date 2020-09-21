drop table dept_emp;
drop table dept_manager;
drop table salaries;
drop table employees
CREATE TABLE departments (
    dept_no varchar(30) NOT NULL,
    dept_name varchar(30) NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);
CREATE TABLE employees (
    emp_no int,
	title_id VARCHAR(30) NOT NULL,
    birth_date date,
    first_name varchar(35) NOT NULL,
    last_name varchar(35) NOT NULL,
    gender varchar(1) NOT NULL,
    hire_date date,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);
CREATE TABLE dept_emp (
    emp_no int,
    dept_no varchar(30) NOT NULL
);
CREATE TABLE dept_manager (
    dept_no varchar(30) NOT NULL,
    emp_no int
);
CREATE TABLE salaries (
    emp_no int,  
    salary int   
);
CREATE TABLE titles (
    title_id varchar(35) NOT NULL,
    title varchar(35) NOT NULL,
	CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);
ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);
ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);
ALTER TABLE employees ADD CONSTRAINT fk_employees_title_id FOREIGN KEY(title_id)
REFERENCES titles (title_id);