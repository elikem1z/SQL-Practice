DROP DATABASE if exists employeemanagementdb;
-- Create a database named 'employeemanagementdb'
CREATE DATABASE employeemanagementdb;

-- Use the created database
USE employeemanagementdb;

-- Create a table named 'employee'
CREATE TABLE employee (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50),
    Email VARCHAR(100) NOT NULL UNIQUE,
    Department VARCHAR(50) DEFAULT 'unassigned',
    Salary DECIMAL(10, 2) CHECK (Salary >= 2000.00)
);

-- Insert data into the table
INSERT INTO employee (EmpID, FirstName, LastName, Email, Department, Salary) VALUES
(1, 'Kwame', 'Nkrumah', 'kwame.nkrumah@gmail.com', 'Engineering', 5000.00),
(2, 'Ama', 'Adu', 'ama.adu@gmail.com', 'Marketing', 4000.00),
(3, 'Yao', 'Mensah', 'Yao.mensah123@example.com', 'Sales', 4500.00),
(4, 'Kendra', 'Antwi', 'ken.antwi@gmail.com', 'unassigned', 4800.00),
(5, 'Abigail', 'Sarpong', 'a.sarp89ong@example.com', 'Marketing', 2000.00),
(6, 'Kofi', 'Mensah', 'kofi.mensah@gmail.com', 'HR', 4600.00),
(7, 'Amina', 'Asante', 'amina.asanteee@yahoo.com', 'Engineering', 4700.00),
(8, 'Esi', 'Owusu', 'esi.owusu@gmail.com', 'Marketing', 4300.00),
(9, 'Amalia', 'Kusi', 'amalia.kusi@yahoo.com', 'Sales', 4400.00),
(10, 'Kwesi', 'Arthur', 'kwesi.arthur@example.com', 'HR', 4500.00),
(11, 'Nana', 'Akuffo', 'nana.akuffo@gmail.com', 'unassigned', 4900.00),
(12, 'Akua', 'Boakye', 'akua.boakye@yahoo.com', 'Marketing', 2000.00),
(13, 'Fiifi', 'Baah', 'fiifi.baah@example.com', 'Sales', 4000.00),
(14, 'Efua', 'Dapaah', 'efua.dapaah@gmail.com', 'HR', 4300.00),
(15, 'Kweku', 'Asamoah', 'kweku.asamoah@yahoo.com', 'unassigned', 2000.00),
(16, 'Kwabena', 'Osei', 'kwabena.osei@example.com', 'Marketing', 4200.00),
(17, 'Serwaa', 'Amihere', 'serwaa.amihere@gmail.com', 'Sales', 2000.00),
(18, 'Akosua', 'Kwarteng', 'akosua.kwarteng@yahoo.com', 'unassigned', 4300.00),
(19, 'Kojo', 'Twum', 'kojo.twum@example.com', 'Engineering', 2000.00),
(20, 'Nana', 'Kofi', 'nana.kofi@gmail.com', 'Marketing', 4400.00);

-- Questions and Queries
-- 1. Find all employees whose first name starts with 'K'.
SELECT * FROM employee WHERE FirstName LIKE 'K%';

-- 2. Find all employees whose last name ends with 'ah'.
SELECT * FROM employee WHERE LastName LIKE '%ah';

-- 3. Find all employees whose first name has exactly 4 characters.
SELECT * FROM employee WHERE FirstName LIKE '____';

-- 4. Find all employees whose last name contains 'sa'.
SELECT * FROM employee WHERE LastName LIKE '%sa%';

-- 5. Find all employees whose email contains 'yahoo'.
SELECT * FROM employee WHERE Email LIKE '%yahoo%';

-- 6. Find all employees in the Engineering department.
SELECT * FROM employee WHERE Department = 'Engineering';

-- 7. Find all employees whose first name starts with 'A' and ends with 'a'.
SELECT * FROM employee WHERE FirstName LIKE 'A%a';

-- 8. Find all employees whose last name starts with 'A', 'K', or 'M'.
SELECT * FROM employee WHERE LastName LIKE 'A%' OR LastName LIKE 'K%' OR LastName LIKE 'M%';

-- 9. Find all employees whose first name does not start with 'A'.
SELECT * FROM employee WHERE FirstName NOT LIKE 'A%';

-- 10. Find all employees whose first name has a vowel (a, e, i, o, u) as the second character.
SELECT * FROM employee WHERE FirstName LIKE '_a%' OR FirstName LIKE '_e%' OR FirstName LIKE '_i%' OR FirstName LIKE '_o%' OR FirstName LIKE '_u%';
