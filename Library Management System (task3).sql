-- USING EXISTING DB
USE library;

-- Create Branch Table
CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id VARCHAR(100),
    Branch_address VARCHAR(100),
    Contact_no VARCHAR(20)
);

-- Create Employees Table
CREATE TABLE Employees (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    Position VARCHAR(100),
    Salary DECIMAL(10, 2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

-- Create Books Table
CREATE TABLE Books (
    ISBN VARCHAR(100) PRIMARY KEY,
    Book_title VARCHAR(100),
    Category VARCHAR(100),
    Rental_Price DECIMAL(5, 2),
    Status VARCHAR(20),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

-- Create Customer Table
CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(100),
    Reg_date DATE
);

-- Create IssueStatus Table
CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(100),
    Issue_date DATE,
    Isbn_book VARCHAR(100),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

-- Create ReturnStatus Table
CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(100),
    Return_date DATE,
    Isbn_book2 VARCHAR(100),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

-- Insert Branches
INSERT INTO Branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(1, '101', '123 Main St', '123-456-7890'),
(2, '102', '456 Elm St', '987-654-3210'),
(3, '103', '789 Oak St', '321-654-9870'),
(4, '104', '101 Pine St', '456-789-1234'),
(5, '105', '202 Cedar St', '789-123-4567');

-- Insert Employees
INSERT INTO Employees (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(1, 'Alice Smith', 'Manager', 50000, 1),
(2, 'Bob White', 'Assistant Manager', 40000, 1),
(3, 'Robert Johnson', 'Clerk', 30000, 3),
(4, 'Emily Davis', 'Clerk', 30000, 4),
(5, 'Michael Brown', 'Assistant Manager', 42000, 5),
(6, 'Sarah Miller', 'Clerk', 31000, 2),
(7, 'William Wilson', 'Clerk', 30500, 3),
(8, 'Jessica Taylor', 'Manager', 51000, 4),
(9, 'David Anderson', 'Clerk', 32000, 5),
(10, 'Laura Moore', 'Assistant Manager', 40500, 2);

-- Insert Books (20 shown, can be expanded to 100+)
INSERT INTO Books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('978-0-12-345678-9', 'The Science World', 'Science', 12.99, 'Yes', 'Author C', 'Publisher C'),
('978-4-56-789123-0', 'The Art of War', 'History', 8.99, 'Yes', 'Author D', 'Publisher D'),
('978-7-89-012345-6', 'Mastering Coding', 'Technology', 19.99, 'No', 'Author E', 'Publisher E'),
('978-2-34-567890-1', 'Cooking 101', 'Cookbook', 7.99, 'Yes', 'Author F', 'Publisher F'),
('978-5-67-890123-4', 'Gardening for Beginners', 'Lifestyle', 10.99, 'No', 'Author G', 'Publisher G'),
('978-8-90-123456-7', 'Business Strategy', 'Business', 15.99, 'Yes', 'Author H', 'Publisher H'),
('978-3-45-678901-2', 'Mystery of the Mind', 'Fiction', 11.99, 'Yes', 'Author I', 'Publisher I'),
('978-6-78-901234-5', 'Exploring Space', 'Science', 13.99, 'No', 'Author J', 'Publisher J'),
('978-1-23-456789-0', 'AI for Beginners', 'Technology', 14.99, 'Yes', 'A. Neural', 'TechPress'),
('978-2-34-567891-1', 'World History: 101', 'History', 9.99, 'Yes', 'B. Historian', 'WorldPub'),
('978-3-45-678912-2', 'Deep Cooking', 'Cookbook', 11.99, 'No', 'C. Chef', 'KitchenLife'),
('978-4-56-789123-3', 'Hiking the Himalayas', 'Travel', 13.49, 'Yes', 'T. Trekker', 'Adventure Inc.'),
('978-5-67-891234-4', 'Digital Marketing', 'Business', 12.89, 'Yes', 'M. Market', 'BizHouse'),
('978-6-78-912345-5', 'Python for Everyone', 'Technology', 15.00, 'Yes', 'P. Coder', 'DevBooks'),
('978-7-89-123456-6', 'Fictional Futures', 'Fiction', 10.99, 'No', 'F. Author', 'LitWorld'),
('978-8-90-234567-7', 'World of Plants', 'Science', 9.50, 'Yes', 'B. Botanist', 'NaturePress');

-- Insert Customers
INSERT INTO Customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'John Doe', '123 Maple St', '2024-01-01'),
(2, 'Jane Roe', '456 Pine St', '2024-02-01'),
(3, 'Charlie Black', '202 Oak St', '2024-03-01'),
(4, 'Diana Green', '303 Cedar St', '2024-04-01'),
(5, 'Eve Blue', '404 Birch St', '2024-05-01'),
(6, 'Frank Red', '505 Willow St', '2024-06-01'),
(7, 'Grace Yellow', '606 Ash St', '2024-07-01'),
(8, 'Henry Purple', '707 Redwood St', '2024-08-01'),
(9, 'Ivy Orange', '808 Maple St', '2024-09-01'),
(10, 'Jack Gray', '909 Elm St', '2024-10-01'),
(11, 'Zara Vee', '111 First Ave', '2023-12-01'),
(12, 'Dany Dani', '007 James Bond', '2023-11-07'),
(13, 'Max Steel', 'Skyline Rd', '2024-09-01'),
(14, 'Lina Shade', 'Sunset Blvd', '2024-09-02'),
(15, 'Carlos Night', 'Moonlight Ln', '2024-09-03'),
(16, 'Nina Day', 'Rainy Ave', '2024-09-04'),
(17, 'Oscar Ocean', 'Beach St', '2024-09-05'),
(18, 'Petra Hill', 'Mountain Dr', '2024-09-06'),
(19, 'Quinn Field', 'Valley Way', '2024-09-07'),
(20, 'Rita Lake', 'River Rd', '2024-09-08');

-- Insert IssueStatus (More than 15 shown, can expand as needed)
INSERT INTO IssueStatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 3, 'The Science World', '2024-08-07', '978-0-12-345678-9'),
(2, 4, 'The Art of War', '2024-08-10', '978-4-56-789123-0'),
(3, 5, 'Mastering Coding', '2024-08-12', '978-7-89-012345-6'),
(4, 6, 'Cooking 101', '2024-08-15', '978-2-34-567890-1'),
(5, 7, 'Gardening for Beginners', '2024-08-18', '978-5-67-890123-4'),
(6, 8, 'Business Strategy', '2024-08-20', '978-8-90-123456-7'),
(7, 9, 'Mystery of the Mind', '2024-08-22', '978-3-45-678901-2'),
(8, 10, 'Exploring Space', '2024-08-25', '978-6-78-901234-5'),
(9, 13, 'AI for Beginners', '2024-09-01', '978-1-23-456789-0'),
(10, 14, 'World History: 101', '2024-09-02', '978-2-34-567891-1'),
(11, 15, 'Deep Cooking', '2024-09-03', '978-3-45-678912-2'),
(12, 16, 'Python for Everyone', '2024-09-04', '978-6-78-912345-5'),
(13, 17, 'World of Plants', '2024-09-05', '978-8-90-234567-7'),
(14, 18, 'Hiking the Himalayas', '2024-09-06', '978-4-56-789123-3'),
(15, 19, 'Digital Marketing','2024-09-07', '978-5-67-891234-4'),
(16, 20, 'Fictional Futures', '2024-09-08', '978-7-89-123456-6');

-- Insert ReturnStatus
INSERT INTO ReturnStatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 3, 'The Science World', '2024-08-17', '978-0-12-345678-9'),
(2, 4, 'The Art of War', '2024-08-20', '978-4-56-789123-0'),
(3, 5, 'Mastering Coding', '2024-08-22', '978-7-89-012345-6'),
(4, 6, 'Cooking 101', '2024-08-25', '978-2-34-567890-1');

-- Create Indexes
CREATE INDEX idx_books_category ON Books(Category);
CREATE INDEX idx_employees_salary ON Employees(Salary);
CREATE INDEX idx_customers_regdate ON Customer(Reg_date);

-- Create Views
CREATE VIEW View_ActiveBooks AS
SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'Yes';

-- Sample Queries
SELECT * FROM View_ActiveBooks;

SELECT Emp_name, Position FROM Employees WHERE Salary > 40000;

SELECT Customer_name
FROM Customer
LEFT JOIN IssueStatus ON Customer.Customer_Id = IssueStatus.Issued_cust
WHERE Reg_date < '2024-01-01' AND IssueStatus.Issue_Id IS NULL;

SELECT Branch_no, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Branch_no;

SELECT Customer_name
FROM Customer
JOIN IssueStatus ON Customer.Customer_Id = IssueStatus.Issued_cust
JOIN Books ON IssueStatus.Isbn_book = Books.ISBN
WHERE Books.Rental_Price > 10;


-- ORDER BY
SELECT Customer_Id, Customer_name, Reg_date
FROM Customer
ORDER BY Reg_date DESC;

-- INNER JOIN
SELECT c.Customer_name, i.Issued_book_name, i.Issue_date
FROM IssueStatus i
INNER JOIN Customer c ON i.Issued_cust = c.Customer_Id;

-- RIGHT JOIN
SELECT b.Book_title, r.Return_date
FROM Books b
RIGHT JOIN ReturnStatus r ON b.ISBN = r.Isbn_book2;

-- SUBQUERY
SELECT Customer_Id, Customer_name
FROM Customer
WHERE Customer_Id IN (
    SELECT Issued_cust
    FROM IssueStatus
    GROUP BY Issued_cust
    HAVING COUNT(*) > 1
);
-- aggregate functions(sum & avg)
-- SUM FUNCTION
SELECT Branch_no, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Branch_no;

-- avg function
SELECT Category, AVG(Rental_Price) AS Avg_Price
FROM Books
GROUP BY Category;

