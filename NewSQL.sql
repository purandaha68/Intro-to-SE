
DROP TABLE EMP;

CREATE TABLE EMP(EMPNO integer NOT NULL,
        ENAME VARCHAR(10),
        JOB VARCHAR(9),
        MGR integer,
        HIREDATE DATE,
        SAL integer,
        COMM integer,
        DEPTNO integer);

INSERT INTO EMP VALUES
        (7369, 'SMITH',  'CLERK',     7902,'1980-12-17',  800, NULL, 20);
INSERT INTO EMP VALUES
        (7499, 'ALLEN',  'SALESMAN',  7698,'1981-02-20', 1600,  300, 30);
INSERT INTO EMP VALUES
        (7521, 'WARD',   'SALESMAN',  7698,'1981-02-22',1250,  500, 30);
INSERT INTO EMP VALUES
        (7566, 'JONES',  'MANAGER',   7839, '1981-03-02' ,2975, NULL, 20);
INSERT INTO EMP VALUES
	(7654, 'MARTIN', 'SALESMAN',7698,'1981-09-28', 1250, 1400, 30);
INSERT INTO EMP VALUES
        (7698, 'BLAKE',  'MANAGER',   7839,'1981-05-01', 2850, NULL, 30);
INSERT INTO EMP VALUES
        (7782, 'CLARK',  'MANAGER',   7839,'1981-06-09', 2450, NULL, 10);
INSERT INTO EMP VALUES
        (7788, 'SCOTT',  'ANALYST',   7566,'1982-12-09',3000, NULL, 20);
INSERT INTO EMP VALUES
        (7839, 'KING',   'PRESIDENT', NULL,'1981-11-17', 5000, NULL, 10);
INSERT INTO EMP VALUES
        (7844, 'TURNER', 'SALESMAN',  7698,'1981-09-08',  1500,    0, 30);
INSERT INTO EMP VALUES
        (7876, 'ADAMS',  'CLERK',     7788,'1983-01-12', 1100, NULL, 20);
INSERT INTO EMP VALUES
        (7900, 'JAMES',  'CLERK',     7698,'1981-12-03', 950, NULL, 30);
INSERT INTO EMP VALUES
        (7902, 'FORD',   'ANALYST',   7566,'1981-12-03',  3000, NULL, 20);
INSERT INTO EMP VALUES
        (7934, 'MILLER', 'CLERK',     7782,'1982-01-23', 1300, NULL, 10);
INSERT INTO EMP VALUES
        (0, 'MILLER', 'CLERK',     7782,'1982-01-23', 1300, NULL, 10);
        
DELETE FROM EMP where EMPNO = 0;

UPDATE EMP SET MGR=5000 where EMPNO = 7499;

SELECT MGR,HIREDATE FROM EMP where EMPNO = 7654 or EMPNO = 7369;
SELECT MGR AS NTR,HIREDATE FROM EMP where EMPNO = 7654 or EMPNO = 7369;

SELECT*FROM EMP;


DROP TABLE DESIGNATION_MASTER;


CREATE TABLE Designation_Master(
Design_Code INT PRIMARY KEY,
Design_Name VARCHAR(50) UNIQUE);

INSERT INTO designation_master VALUES(101,'HOD');
INSERT INTO designation_master VALUES(102,'Professor');
INSERT INTO designation_master VALUES(103,'Reader');
INSERT INTO designation_master VALUES(104,'Sr.Lecturer');
INSERT INTO designation_master VALUES(105,'Lecturer');
INSERT INTO designation_master VALUES(106,'Director');
INSERT INTO designation_master VALUES(107,'Producer');

SELECT*FROM designation_Master;



DROP TABLE DEPARTMENT_MASTER;


CREATE TABLE Department_Master(
Dept_code INTEGER PRIMARY KEY,
Dept_Name VARCHAR(50) UNIQUE);
INSERT INTO department_master VALUES(10,'Computer Science');
INSERT INTO department_master VALUES(20,'Electricals');
INSERT INTO department_master VALUES(30,'Electronics');
INSERT INTO department_master VALUES(40,'Mechanics');
INSERT INTO department_master VALUES(50,'Robotics');
INSERT INTO department_master VALUES(60,'Aeronatics');

SELECT*FROM department_Master;

SELECT Dept_code FROM Department_Master WHERE Dept_Name NOT IN('Computer Science', 'Robotics');



DROP TABLE STUDENT_MASTER;
 

CREATE TABLE Student_Master(
Student_Code INTEGER PRIMARY KEY,
Student_Name VARCHAR(50) NOT NULL,
Dept_Code INTEGER REFERENCES Department_Master(dept_code),
Student_Dob DATE,
Student_Address VARCHAR(240));

INSERT INTO student_master VALUES(1001,'Amit',10,'1980-01-11','chennai');
INSERT INTO student_master VALUES(1002,'Ravi',10,'1981-11-01','New Delhi');
INSERT INTO student_master VALUES(1003,'Ajay',20,'1982-01-13',null);
INSERT INTO student_master VALUES(1004,'Raj',30,'1979-01-14','Mumbai');
INSERT INTO student_master VALUES(1005,'Arvind',40,'83-01-15','Bangalore');
INSERT INTO student_master VALUES(1006,'Rahul',50,'1981-01-16','Delhi');
INSERT INTO student_master VALUES(1007,'Mehul',20,'1982-01-17','Chennai');
INSERT INTO student_master VALUES(1008,'Dev',10,'1981-03-11','Bangalore');
INSERT INTO student_master VALUES(1009,'Vijay',30,'1980-01-11','Bangalore');
INSERT INTO student_master VALUES(1010,'Rajat',40,'1980-01-20','Bangalore');
INSERT INTO student_master VALUES(1011,'Sunder',50,'1980-01-21','Chennai');
INSERT INTO student_master VALUES(1012,'Rajesh', 30,'1980-01-22',null);
INSERT INTO student_master VALUES(1013,'Anil',20,'1980-01-23','Chennai');
INSERT INTO student_master VALUES(1014,'Sunil',10,'1985-02-15',	null);
INSERT INTO student_master VALUES(1015,'Kapil',40,'1981-03-18','Mumbai');
INSERT INTO student_master VALUES(1016,'Ashok',40,'1980-03-18',null);
INSERT INTO student_master VALUES(1017,'Ramesh',30,'1980-12-27',null);
INSERT INTO student_master VALUES(1018,'Amit Raj',50,'1980-11-22','New Delhi');
INSERT INTO student_master VALUES(1019,'Ravi Raj',50,'1983-05-23','New Delhi');
INSERT INTO student_master VALUES(1020,'Amrit',70,'1984-09-27',null);
INSERT INTO student_master VALUES(1021,'Sumit',20,'1985-11-27','Chennai');


SELECT * FROM Student_Master;


SELECT 'Hello'|| Student_Name FROM Student_Master;

SELECT Student_Name AS "'Hello' || Student_Name" FROM Student_Master;

SELECT (319/212)+10 FROM DUAL;

SELECT employee_seq.NEXTVAL FROM DUAL;

DROP TABLE STUDENT_MARKS;



CREATE TABLE Student_Marks(
Student_Code INTEGER REFERENCES student_Master(student_code),
Student_Year INTEGER not null,
Subject1 INTEGER,
Subject2 INTEGER,
Subject3 INTEGER);

-- UPDATE  Student_Marks SET Student_Year=S_Year where ;

INSERT INTO student_marks VALUES(1001,	2010,	55,45,78);
INSERT INTO student_marks VALUES(1002,	2010,	66,74,88);
INSERT INTO student_marks VALUES(1003,	2010,	87,54,65);
INSERT INTO student_marks VALUES(1004,	2010,	65,64,90);
INSERT INTO student_marks VALUES(1005,	2010,	78,88,65);
INSERT INTO student_marks VALUES(1006,	2010,	65,86,54);
INSERT INTO student_marks VALUES(1007,	2010,	67,79,49);
INSERT INTO student_marks VALUES(1008,	2010,	72,55,55);
INSERT INTO student_marks VALUES(1009,	2010,	71,59,58);
INSERT INTO student_marks VALUES(1010,	2010,	68,44,92);
INSERT INTO student_marks VALUES(1011,	2010,	89,96,78);
INSERT INTO student_marks VALUES(1012,	2010,	78,56,55);
INSERT INTO student_marks VALUES(1013,	2010,	75,58,65);
INSERT INTO student_marks VALUES(1014,	2010,	73,74,65);
INSERT INTO student_marks VALUES(1015,	2010,	66,45,74);
INSERT INTO student_marks VALUES(1016,	2010,	68,78,74);
INSERT INTO student_marks VALUES(1017,	2010,	69,44,52);
INSERT INTO student_marks VALUES(1018,	2010,	65,78,56);
INSERT INTO student_marks VALUES(1019,	2010,	78,58,74);
INSERT INTO student_marks VALUES(1020,	2010,	45,55,65);
INSERT INTO student_marks VALUES(1021,	2010,	78,79,78);
INSERT INTO student_marks VALUES(1001,	2011,	68,44,92);
INSERT INTO student_marks VALUES(1002,	2011,	89,96,78);
INSERT INTO student_marks VALUES(1003,	2011,	78,56,55);
INSERT INTO student_marks VALUES(1004,	2011,	75,58,65);
INSERT INTO student_marks VALUES(1005,	2011,	73,74,65);
INSERT INTO student_marks VALUES(1006,	2011,	66,45,74);
INSERT INTO student_marks VALUES(1007,	2011,	68,78,74);
INSERT INTO student_marks VALUES(1008,	2011,	69,44,52);
INSERT INTO student_marks VALUES(1009,	2011,	65,78,56);
INSERT INTO student_marks VALUES(1010,	2011,	78,58,74);
INSERT INTO student_marks VALUES(1011,	2011,	45,55,65);
INSERT INTO student_marks VALUES(1012,	2011,	78,79,78);
INSERT INTO student_marks VALUES(1013,	2011,	66,74,88);
INSERT INTO student_marks VALUES(1014,	2011,	65,64,90);
INSERT INTO student_marks VALUES(1015,	2011,	78,88,65);
INSERT INTO student_marks VALUES(1016,	2011,	65,86,54);
INSERT INTO student_marks VALUES(1017,	2011,	67,79,49);
INSERT INTO student_marks VALUES(1018,	2011,	72,55,55);
INSERT INTO student_marks VALUES(1019,	2011,	71,59,58);
INSERT INTO student_marks VALUES(1020,	2011,	55,45,78);
INSERT INTO student_marks VALUES(1021,	2011,	87,54,65);


SELECT DISTINCT Student_Code FROM student_marks;


SELECT* FROM student_marks;

SELECT COUNT(*) FROM student_marks;

SELECT AVG(Subject1), AVG(Subject2), AVG(Subject3) FROM student_marks;

SELECT Student_Code, AVG(Subject1), AVG(Subject2), AVG(Subject3) FROM student_marks GROUP BY Student_Code;

SELECT Student_Year, MIN(Subject1), MAX(Subject1)   FROM student_marks GROUP BY Student_Year ORDER BY Student_Year DESC;

DROP TABLE STAFF_MASTER;


CREATE TABLE staff_Master(
Staff_Code INTEGER PRIMARY KEY,
Staff_Name VARCHAR(50) NOT NULL,
Design_Code INTEGER REFERENCES Designation_Master(design_code),
Dept_Code INTEGER REFERENCES Department_Master(dept_code),
Staff_dob DATE,
Hiredate DATE,
Mgr_code INTEGER,
Staff_sal INTEGER,
Staff_address VARCHAR(240));

INSERT INTO staff_master 
VALUES(100001,'Arvind',102,30,'1980-01-15','2003-03-15',100006,17000,'Bangalore');
INSERT INTO staff_master 
VALUES(100002,'Shyam',102,20,'1980-02-18','2017-02-02',100007,20000,'Chennai');
INSERT INTO staff_master
VALUES(100003,'Mohan',102,10,'1980-03-23','2002-01-19',100006,24000,'Mumbai');
INSERT INTO staff_master 
VALUES(100004,'Anil',102,20,'1977-04-22','2001-03-11',100006,20000,'Hyderabad');
INSERT INTO staff_master
VALUES(100005,'John',106,10,'1976-05-22','2001-01-22',100007,32000,'Bangalore');
INSERT INTO staff_master 
VALUES(100006,'Allen',103,30,'1980-01-21','2001-03-23',100005,42000,'Chennai');


INSERT INTO staff_master 
VALUES(100007,'Smith',103,20,'1973-03-29','2002-03-12',100005,62000,'Mumbai');
INSERT INTO staff_master 
VALUES(100008,'Raviraj',102,40,'1980-06-27','2003-08-25',100006,18000,'Bangalore');
INSERT INTO staff_master
VALUES(100009,'Rahul',102,20,'1978-01-16','2003-12-11',100006,22000,'Hyderabad');
INSERT INTO staff_master 
VALUES(100010,'Ram',103,30,'1979-05-15','2002-02-17',100007,32000,'Bangalore');

SELECT*FROM staff_master;


SELECT Staff_Code, Staff_Name, Dept_Code FROM staff_master ORDER BY  Staff_Code , Dept_Code;

SELECT  Staff_Code,Staff_Name, Dept_Code FROM staff_master;

 SELECT Staff_Code, Staff_Name, Dept_Code FROM staff_master ORDER BY Staff_Code AND Dept_Code;
 
SELECT Dept_code, COUNT(*) FROM staff_master GROUP BY Dept_code;

SELECT Dept_code, MIN(Staff_sal), COUNT(*) FROM staff_master GROUP BY Dept_code HAVING MIN(Staff_sal) > 20000;

SELECT dept_code,AVG(staff_sal),MIN(staff_sal), MAX(staff_sal) FROM staff_master GROUP BY dept_code;

SELECT dept_code,AVG(staff_sal),MIN(staff_sal), MAX(staff_sal) FROM staff_master GROUP BY dept_code HAVING AVG(staff_sal)>30000;

DROP TABLE BOOK_MASTER;


CREATE TABLE Book_Master(
Book_code INTEGER PRIMARY KEY,
Book_name VARCHAR(50) NOT NULL,
Book_pub_year INTEGER,
Book_pub_author VARCHAR(50) NOT NULL);

INSERT INTO book_master VALUES(10000001,123,2000,'Yashavant Kanetkar');

INSERT INTO book_master VALUES(10000002,'Mastersing VC++',2005,'P.J Allen');

INSERT INTO book_master VALUES(10000003,'JAVA Complete Reference',2004,'H.Schild');

INSERT INTO book_master VALUES(10000004,'J2EE Complete Reference',2000,'H. Schild');

INSERT INTO book_master VALUES(10000005,'Relational DBMS',2000,'B.C. Desai');

INSERT INTO book_master VALUES(10000006,'Let Us C',2000, 'Yashavant Kanetkar');

INSERT INTO book_master VALUES(10000007,'Intoduction To Algorithams',2001,'Cormen');

INSERT INTO book_master VALUES(10000008,'Computer Networks',2000,'Tanenbaum');

INSERT INTO book_master VALUES(10000009,'Introduction to O/S',2001,'Millan');

SELECT*FROM book_master;


DROP TABLE BOOK_TRANSACTIONS;

CREATE TABLE Book_transactions(
Book_code INTEGER REFERENCES Book_Master(Book_code),
Student_code INTEGER REFERENCES Student_Master(student_code),
Staff_code INTEGER REFERENCES Staff_Master(staff_code),
Book_issue_Date date not null,
Book_expected_return_date date not null,
Book_actual_return_date date);
  
INSERT INTO book_transactions 
VALUES(10000006,1012,NULL,'2011-02-02','2011-02-09',NULL);

INSERT INTO book_transactions 
VALUES(10000008,NULL,100006,'2011-03-10','2011-03-17','2011-03-15');

INSERT INTO book_transactions 
VALUES(10000009,NULL,100010,'2011-04-01','2011-04-08','2011-04-10');

INSERT INTO book_transactions 
VALUES(10000004,1015,NULL,'2011-02-12','2011-02-19',NULL);


INSERT INTO book_transactions 
VALUES(10000005,NULL,100007,'2011-03-14','2011-03-21','2011-03-21');

INSERT INTO book_transactions 
VALUES(10000007,NULL,100007,'2011-04-01','2011-04-07','2011-04-06');

INSERT INTO book_transactions 
VALUES(10000007,NULL,100006,'2010-04-01','2010-04-07','2010-04-06');
INSERT INTO book_transactions 
VALUES(10000005,1009,NULL,'2011-05-31','2011-06-08','2011-06-08');

SELECT*FROM book_transactions;

