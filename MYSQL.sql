CREATE TABLE Empl (
    empno INT,
    ename VARCHAR(50),
    job VARCHAR(50),
    mgr INT,
    hiredate DATE,
    sal DECIMAL(10, 2),
    comm DECIMAL(10, 2),
    deptno INT
);

INSERT INTO Empl (empno, ename, job, mgr, hiredate, sal, comm, deptno) VALUES
(8369, 'SMITH', 'CLERK', NULL, '1990-12-18', 800.00, NULL, 20),
(8499, 'ANYA', 'SALESMAN', 8698, '1991-02-20', 1600.00, NULL, 30),
(8521, 'SETH', 'SALESMAN', 8698, '1991-02-22', 1250.00, 500.00, 30),
(8566, 'MAHADEVAN', 'MANAGER', 8839, '1991-04-02', 2985.00, NULL, 20),
(8654, 'MOMIN', 'SALESMAN', 8698, '1991-05-01', 2850.00, NULL, 30),
(8882, 'SHIVANSH', 'MANAGER', 8839, '1991-06-09', 2450.00, NULL, 20),
(8844, 'KULDEEP', 'SALESMAN', 8698, '1991-09-08', 1500.00, 0.00, 30),
(8698, 'BINA', 'MANAGER', 8839, '1991-05-01', 2850.00, 0.00, 30),
(8888, 'SCOTT', 'ANALYST', 8566, '1992-12-09', 3000.00, NULL, 20),
(8888, 'AMIR', 'PRESIDENT', NULL, '1992-12-09', 3000.00, NULL, 10);


//Display EName and Sal of employees whose salary is greater than or equal to 2200
SELECT EName, Sal
FROM Empl
WHERE Sal >= 2200;

//Display details of employees who are not getting commission:
SELECT *
FROM Empl
WHERE comm IS NULL;

//Display employee name and salary of those employees who don't have their salary in the range of 2500 to 4000:
SELECT EName, Sal
FROM Empl
WHERE Sal NOT BETWEEN 2500 AND 4000;

//Display the name, job title, and salary of employees who don't have a manager
SELECT EName, job, Sal
FROM Empl
WHERE mgr IS NULL;

//Display the name of an employee whose name contains "A" as the third alphabet:
SELECT EName
FROM Empl
WHERE SUBSTRING(EName, 3, 1) = 'A';

//Display the name of an employee whose name contains "T" as the last alphabet:
SELECT EName
FROM Empl
WHERE RIGHT(EName, 1) = 'T';


2. JDBC connectivity

CREATE TABLE Empl3 (
    empcode INT,
    empname VARCHAR(50),
    empage INT,
    esalary DECIMAL(10)
);



