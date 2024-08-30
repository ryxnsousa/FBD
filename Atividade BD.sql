CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Department (
    Dno INT PRIMARY KEY,
    Dname VARCHAR(50) NOT NULL,
    Location VARCHAR(50)
);

CREATE TABLE Employee (
    SSN INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Address VARCHAR(100),
    Salary DECIMAL(10, 2),
    Dno INT,
    FOREIGN KEY (Dno) REFERENCES Department(Dno)
);

show tables;

INSERT INTO Department (Dno, Dname, Location) VALUES (1, 'Research', 'New York');
INSERT INTO Department (Dno, Dname, Location) VALUES (4, 'Administration', 'Chicago');
INSERT INTO Department (Dno, Dname, Location) VALUES (5, 'Sales', 'Boston');

INSERT INTO Employee (SSN, Name, Address, Salary, Dno) VALUES (123456789, 'John Doe', '123 Elm St', 60000, 1);
INSERT INTO Employee (SSN, Name, Address, Salary, Dno) VALUES (987654321, 'Jane Smith', '456 Oak St', 65000, 4);
INSERT INTO Employee (SSN, Name, Address, Salary, Dno) VALUES (567890123, 'Mike Johnson', '789 Pine St', 55000, 5);

SELECT Name FROM Employee;
SELECT COUNT(*) FROM Employee WHERE Dno = (SELECT Dno FROM Department WHERE Dname = 'Research');
INSERT INTO Department (Dno, Dname, Location) VALUES (7, 'DataScience', 'San Francisco');

INSERT INTO Employee (SSN, Name, Address, Salary, Dno) VALUES (101112131, 'Alice Brown', '101 Maple St', 70000, 7);
INSERT INTO Employee (SSN, Name, Address, Salary, Dno) VALUES (141516171, 'Bob White', '202 Birch St', 72000, 7);

UPDATE Employee SET Salary = Salary * 1.135 WHERE SSN IS NOT NULL;

UPDATE Employee SET Address = 'Itapajé, CE' WHERE Dno = 4;



