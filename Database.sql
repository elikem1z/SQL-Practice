
-- Drop the database if it already exists --
drop database if exists Studentdb;

-- Create database --
create database Studentdb;

-- Use the database --
use Studentdb;

-- Create the Student table with specified columns --
create table Student(
    StudentId int primary key,
    FirstName varchar(50),
    LastName varchar(50),
    Major varchar(50),
    YearGroup int,
    dob date
);

-- Inserting initial data into the Student table --
insert into Student (StudentId, FirstName, LastName, Major, YearGroup, dob) values
(50292026, 'Peter', 'Rice', 'Computer Science', 2026, '2000-01-27'),
(77342026, 'Nanna', 'Abankwa', 'Economics', 2025, '2000-12-21'),
(22192024, 'Griffin', 'Morgan', 'Electrical Engineering', 2024, '2003-06-06'),
(3122026, 'Nana Ayeyi', 'Djan', 'Business', 2026, '2000-07-13'),
(4222026, 'Stephane', 'Cudjoe', 'Geography', 2027, '1999-07-13'),
(33682025, 'Seth', 'Nwolley', 'Physics', 2025, '2004-04-12'),
(99992024, 'Allotei', 'Allotey', 'Poetry', 2024, '1998-11-06');

-- Updating the year group values for Nanna Abankwa and Stephane Cudjoe --
update Student set YearGroup = 2026 where StudentId = 77342026;

update Student set YearGroup = 2026 where StudentId = 4222026;

-- Updating Nana Ayeyi Djan's major --
update Student set Major = 'Computer Science' where StudentId = 3122026;

-- Updating Allotei Allotey's last name
update Student set LastName = 'Allotey Jnr.'where StudentId = 99992024;

-- This will remove Seth Nwolley from the student database
delete from Student
where StudentId = 33682025;

-- Correcting Peter Rice's date of birth --
update Student set dob = '1993-01-27' where StudentId = 50292026;

-- Adding two new students --
insert into Student (StudentId, FirstName, LastName, Major, YearGroup, dob) values
(52782027, 'Kofi', 'Mensah', 'Mathematics', 2027, '2002-08-15'),
(43892028, 'Ama', 'Boateng', 'Biology', 2028, '2001-03-22');

-- Add a new attribute for Career --
alter table Student add Career varchar(50);

-- Update the Career for all students --
update Student
set Career = case 
    when StudentId = 50292026 then 'AI Specialist'
    when StudentId = 77342026 then 'Economist'
    when StudentId = 22192024 then 'Electrical Engineer'
    when StudentId = 3122026 then 'Software Developer'
    when StudentId = 4222026 then 'Cartographer'
    when StudentId = 99992024 then 'Poet'
    when StudentId = 52782027 then 'Statistician'
    when StudentId = 43892028 then 'Marine Biologist'
end;

-- Verifying the contents of the Student table --
select * from Student;
