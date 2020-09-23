
CREATE TABLE "employees" (
    "emp_no" int   NOT NULL primary key,
    "emp_title" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL references employees(emp_no),
    "salary" int   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL PRIMARY KEY,
    "dept_name" varchar   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL references employees(emp_no),
    "dept_no" varchar   NOT NULL references departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL references departments(dept_no),
    "emp_no" int   NOT NULL references employees(emp_no)
);

CREATE TABLE "titles" (
    "title_id" varchar   NOT NULL primary key,
    "title" varchar   NOT NULL
);