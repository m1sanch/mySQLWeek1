-- Select all employees who were born before 1965-01-01
SELECT * FROM employees 
WHERE birth_date  < '1965-01-01';

-- Selects all employees who are female and were hired after 1990
SELECT * FROM employees
WHERE gender = 'F' AND 
hire_date > '1990-12-31';

-- Selects the first and last name of the first 50 employees whose last name starts with F
SELECT first_name, last_name FROM employees
WHERE last_name LIKE 'F%'
LIMIT 0, 50;

-- Inserts three new employees
-- INSERT INTO employees VALUES (100, '1987-05-12', 'Adam', 'Blith', 'M', '2019-07-08'),
--     						 (101, '1988-05-04', 'Ali', 'Chex', 'F', '2019-01-01'),
--                              (102, '1990-05-06', 'Britney', 'Tame', 'F', '2008-10-06');
                             
-- baseline for employee number 10023
SELECT * FROM employees
WHERE emp_no = 10023;
                             
-- Updates the employee's first name to Bob for the employee with the emp_no of 10023.
UPDATE employees 
SET first_name = 'Bob'
WHERE emp_no = 10023;

-- Selects employee number 10023 to validate change
SELECT * FROM employees
WHERE emp_no = 10023;

-- Selects employees as baseline where first and last name starts with P
Select first_name, last_name, hire_date FROM employees
WHERE first_name LIKE 'P%' OR
last_name LIKE 'P%';


-- Updates all employees hire dates to 2002-01-01 whose first or last names start with P.
UPDATE employees
SET hire_date = '2002-01-01'
WHERE first_name LIKE 'P%' OR
last_name LIKE 'P%';

-- Selects employees to validate changes
Select first_name, last_name, hire_date FROM employees
WHERE first_name LIKE 'P%' OR
last_name LIKE 'P%';

-- Selects all employees who have an emp_no less than 10000 as baseline
Select emp_no, first_name, last_name FROM employees 
WHERE emp_no < 10000;

-- deletes all employees who have an emp_no less than 10000
DELETE FROM employees 
WHERE emp_no < 10000;

-- Selects all employees who have an emp_no less than 10000 to validate changes
-- Expecting a null response
Select emp_no, first_name, last_name FROM employees 
WHERE emp_no < 10000;

-- Selects employees with employee number equal 10048, 10099, 10234, 20089 as baseline
Select emp_no, first_name, last_name FROM employees 
WHERE emp_no IN (10048, 10099, 10234, 20089);

-- deletes all employees in list on line 65
DELETE FROM employees 
WHERE emp_no IN (10048, 10099, 10234, 20089);

-- Selects all employees from list on line 65 to validate changes
-- Expecting a null response
Select emp_no, first_name, last_name FROM employees 
WHERE emp_no IN (10048, 10099, 10234, 20089);
