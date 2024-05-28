CREATE DATABASE librarydb;
USE librarydb;

-- A table to store book information
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    year_published INT NOT NULL,
    genre VARCHAR(255) NOT NULL,
    copies INT NOT NULL
);

-- A table to store borrower information
CREATE TABLE borrowers (
    borrower_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    home_address VARCHAR(255) NOT NULL,
    mobile_number VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    book_id INT,
    date_time_borrowed DATETIME NOT NULL,
    date_time_returned DATETIME,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Inserting book data
INSERT INTO books (title, author, year_published, genre, copies) VALUES
('The Name of the Wind', 'Patrick Rothfuss', 2007, 'Fantasy', 27),
('Diary of a Wimpy Kid', 'Jeff Kinney', 2008, 'Comedy', 10),
('Diary of a Wimpy Kid: Rodrick Rules', 'Jeff Kinney', 2009, 'Comedy', 5),
('Diary of a Wimpy Kid: The Last Straw', 'Jeff Kinney', 2009, 'Comedy', 7),
('Diary of a Wimpy Kid: Dog Days', 'Jeff Kinney', 2009, 'Comedy', 7),
('Diary of a Wimpy Kid: The Ugly Truth', 'Jeff Kinney', 2010, 'Comedy', 7),
('Vision in White', 'Nora Roberts', 2009, 'Romance', 9),
('How Not to Die', 'Gene Stone', 2015, 'Health', 15),
('Revolutionary Spring', 'Christopher Clark', 2023, 'History', 13),
('Pompeii', 'Robert Harris', 2003, 'History', 21),
('God’s Generals: The Revivalists', 'Roberts Liardon', 2008, 'Religion', 11),
('God’s Generals: The Healing Evangelists', 'Roberts Liardon', 2011, 'Religion', 4),
('God’s Generals: The Roaring Reformers', 'Roberts Liardon', 2003, 'Religion', 4);

-- Inserting borrower data
INSERT INTO borrowers (first_name, last_name, date_of_birth, home_address, mobile_number, email, book_id, date_time_borrowed, date_time_returned) VALUES
('Kwame', 'Mensah', '1990-01-01', '123 Independence Ave', '020-123-4567', 'kwame.mensah@example.com', 1, '2024-05-01 10:00:00', '2024-05-10 10:00:00'),
('Ama', 'Agyeman', '1985-02-02', '456 Osu Rd', '020-234-5678', 'ama.agyeman@example.com', 2, '2024-05-02 11:00:00', '2024-05-11 11:00:00'),
('Akua', 'Adjei', '1992-03-03', '789 Labone Cres', '020-345-6789', 'akua.adjei@example.com', 3, '2024-05-03 12:00:00', '2024-05-12 12:00:00'),
('Kofi', 'Boateng', '1988-04-04', '101 Cantonments Rd', '020-456-7890', 'kofi.boateng@example.com', 4, '2024-05-04 13:00:00', '2024-05-13 13:00:00'),
('Abena', 'Osei', '1995-05-05', '202 Ridge Rd', '020-567-8901', 'abena.osei@example.com', 5, '2024-05-05 14:00:00', '2024-05-14 14:00:00');

-- Query 1: How many Diary of a Wimpy Kid books in total did you receive?
SELECT SUM(copies) AS total_diary_of_a_wimpy_kid_books
FROM books
WHERE title LIKE 'Diary of a Wimpy Kid%';

-- Query 2: How many God’s Generals books in total did you receive?
SELECT SUM(copies) AS total_gods_generals_books
FROM books
WHERE title LIKE 'God’s Generals%';

-- Query 3: List the total number of books in each genre that were received during the month you were gone.
SELECT genre, SUM(copies) AS total_books
FROM books
GROUP BY genre;
