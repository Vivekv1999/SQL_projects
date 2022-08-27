USE tops;
CREATE TABLE student(Rollno INT,NAME VARCHAR(30),branch VARCHAR(30),PRIMARY KEY(Rollno));
INSERT INTO student VALUES(1,"rahul","computer science"),(2,"suhani","electronic and com"),(3,"kriti","electronic and com");


CREATE TABLE exam(RRRollno INT,s_code VARCHAR(30),marks INT,p_code VARCHAR(30),FOREIGN KEY (RRRollno) REFERENCES STUDENT (Rollno));
INSERT INTO exam VALUES(1,"CS11",50,"CS"),(1,"CS12",60,"CS"),(2,"EC101",66,"EC"),(2,"EC102",70,"EC"),(3,"EC101",45,"EC"),(3,"EC102",50,"EC");

USE viveklib;
CREATE TABLE ccbook(book_id INT,title VARCHAR(30),non VARCHAR(30));

SELECT book.`book_id`,book.`author`,book.`price`,ccbook.`book_id`,ccbook.`title` FROM book INNER JOIN ccbook ON ccbook.`book_id`=book.`book_id`; 

