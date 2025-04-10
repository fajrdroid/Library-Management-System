# Library-Management-System 
Project Overview
The Library Management System is designed to:

Manage books, employees, branches, and customers

Track book issues and returns

Generate useful reports using SQL views and queries

Enforce data integrity with foreign key constraints

Database Schema
The database consists of the following tables:

1. Branch
Stores details of each library branch.

Branch_no (Primary Key)

Manager_Id

Branch_address

Contact_no

2. Employees
Details of employees working at branches.

Emp_Id (Primary Key)

Emp_name

Position

Salary

Branch_no (Foreign Key → Branch)

3. Books
Contains data about books in the library.

ISBN (Primary Key)

Book_title

Category

Rental_Price

Status (Yes/No)

Author

Publisher

4. Customer
Information about registered library members.

Customer_Id (Primary Key)

Customer_name

Customer_address

Reg_date

5. IssueStatus
Tracks which customer has issued which book.

Issue_Id (Primary Key)

Issued_cust (Foreign Key → Customer)

Issued_book_name

Issue_date

Isbn_book (Foreign Key → Books)

6. ReturnStatus
Logs book return details.

Return_Id (Primary Key)

Return_cust (Foreign Key → Customer)

Return_book_name

Return_date

Isbn_book2 (Foreign Key → Books)

Data
The dataset includes:

 5 branches

 10+ employees

 20+ books

 20 customers

 15+ book issue records

 Return records for multiple issued books

The data uses realistic entries across multiple categories like Technology, Fiction, Business, Science, and more.

Features
Relational structure with foreign key constraints

Normalized data to avoid redundancy

Sample views and queries for reports and analytics

Indexes for optimized performance



