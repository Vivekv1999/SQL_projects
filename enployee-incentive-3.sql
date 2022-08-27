USE tops;

CREATE TABLE employee(employee_id INT,first_name VARCHAR(30),last_name VARCHAR(30),salary INT,joining_date DATETIME,deparment VARCHAR(30));
INSERT INTO employee VALUES(1,"john","abraham","1000000",'2013-01-01 12.00.00',"banking");

CREATE TABLE incentive(employee_ref_id INT,incentive_date DATE,incentive_amount VARCHAR(30));
INSERT INTO incentive VALUES(1,'01-02-2013',5000);

SELECT first_name FROM employee WHERE first_name="tom";

SELECT first_name,joining_date,salary FROM employee;
SELECT *FROM employee ORDER BY first_name ,salary DESC;
SELECT *FROM employee WHERE first_name LIKE 'j%';

SELECT first_name,MAX(salary) FROM employee GROUP BY deparment ORDER BY salary ;

SELECT e.`first_name`,i.`incentive_amount` FROM employee AS e RIGHT JOIN incentive AS i ON i.`employee_ref_id`=e.`employee_id` WHERE i.`incentive_amount`>3000;
