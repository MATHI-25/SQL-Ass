USE mydatabase;
DROP table Books;
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    price DECIMAL(8,2),
    published_date DATE,
    in_stock INT DEFAULT 1
);
DESC Books;
INSERT INTO Books (title, isbn, price, published_date, in_stock)
VALUES
('Java Programming', 'ISBN1001', 450.00, '2021-05-10', 5),
('History of India', 'ISBN1002', 350.00, '2018-08-15', 2),
('Database Systems', 'ISBN1003', 500.00, '2022-01-20', 0),
('World History', 'ISBN1004', 600.00, '2017-06-12', 3);
SELECT * FROM Books;
ALTER TABLE Books RENAME COLUMN title TO book_title;
ALTER TABLE Books MODIFY COLUMN price FLOAT;
ALTER TABLE Books
ADD COLUMN author_name VARCHAR(50)
NOT NULL DEFAULT 'Unknown';
UPDATE Books
SET price = price * 0.9
WHERE published_date < '2020-01-01';
DELETE FROM Books WHERE in_stock = 0;
ALTER TABLE Books AUTO_INCREMENT = 101;
SELECT book_title, price, published_date FROM Books
WHERE book_title LIKE '%History%' AND price > 300
ORDER BY price DESC;
CREATE TABLE Members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(100) NOT NULL,
    join_date DATE NOT NULL DEFAULT (CURDATE())
);
INSERT INTO Members (member_name, join_date)
VALUES
('Sri', '2024-01-15'),
('Rahul', '2023-11-20'),
('Anitha', '2024-06-18'),
('Kiran', '2024-03-25'),
('Priya', '2025-01-10');
SELECT * FROM Members
WHERE YEAR(join_date) = 2024
ORDER BY member_name ASC;
SELECT * FROM Members;
DROP TABLE Members;













