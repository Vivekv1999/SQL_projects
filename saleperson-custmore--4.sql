USE tops;

CREATE TABLE salesperson(pk_no INT,sanem VARCHAR(30),city VARCHAR(30),commm INT)
INSERT INTO salesperson VALUES(1001,"peel","london",12),(1002,"seres","saj jose",1),(1004,"motika","london",11),(1007,"rafikn","barcelona",15),(1003,"axelrod","new york",1);

CREATE TABLE customer(pk_cnm INT,cname VARCHAR(30),city VARCHAR(30),rating INT,fk_no INT);
INSERT INTO customer VALUES(201,"hoffman","london",100,1001),(202,"giovanne","roe",200,1003);

SELECT *FROM course WHERE totalfees < 35000;
SELECT * FROM salesperson WHERE city IN('barcelona','london');
SELECT *FROM salesperson WHERE commm BETWEEN 10 AND 12;

ALTER TABLE salesperson
ADD PRIMARY KEY (pk_no);

ALTER TABLE customer`emp3`
ADD FOREIGN KEY (fk_no) REFERENCES salesperson(pk_no);




