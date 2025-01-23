/* This project based on Library Management System.
It keeps track of all information about books in the library, their cost, status and 
total number of books available in the library.*/

-- Creating database Library
CREATE DATABASE Library;
USE Library;

-- Creating table 1.Branch
CREATE TABLE Branch(
Branch_No INT PRIMARY KEY,
Manager_ID INT UNIQUE,
Branch_Address VARCHAR (150),
Contact_No VARCHAR (20)
);

DESC Branch;

-- Inserting values to Branch table
INSERT INTO Branch (Branch_No, Manager_ID, Branch_Address, Contact_No) VALUES
(1121, 101, 'Thiruvananthapuram, Kerala', '0471-2332123'),
(1122, 102, 'Kochi, Kerala', '0484-2381234'),
(1123, 103, 'Kozhikode, Kerala', '0495-2304567'),
(1124, 104, 'Kottayam, Kerala', '0481-2578345'),
(1125, 105, 'Thrissur, Kerala', '0487-2356789'),
(1126, 106, 'Palakkad, Kerala', '0491-2558899'),
(1127, 107, 'Malappuram, Kerala', '0483-2721901'),
(1128, 108, 'Kannur, Kerala', '0497-2783444'),
(1129, 109, 'Alappuzha, Kerala', '0477-2251102'),
(1130, 110, 'Pathanamthitta, Kerala', '0468-2227766'),
(1131, 111, 'Wayanad, Kerala', '04936-220799'),
(1132, 112, 'Idukki, Kerala', '04862-252351'),
(1133, 113, 'Kollam, Kerala', '0474-2790345'),
(1134, 114, 'Kasargod, Kerala', '04994-240678'),
(1135, 115, 'Punalur, Kerala', '0475-2201444'),
(1136, 116, 'Varkala, Kerala', '0470-2601777'),
(1137, 117, 'Trivandrum Central, Kerala', '0471-2467889'),
(1138, 118, 'Changanassery, Kerala', '0481-2411893'),
(1139, 119, 'Kumarakom, Kerala', '0481-2523456'),
(1140, 120, 'Perumbavoor, Kerala', '0484-2523567');


SELECT * FROM BRANCH;

-- Creating table 2.Employee
CREATE TABLE Employee(
Emp_ID INT PRIMARY KEY,
Emp_Name VARCHAR(50),
Position VARCHAR(30),
Salary DECIMAL(10,2),
Branch_No INT,
FOREIGN KEY (Branch_No) REFERENCES Branch(Branch_No)
);

DESC Employee;

-- Inserting values to Employee table
INSERT INTO Employee (Emp_ID, Emp_Name, Position, Salary, Branch_No) VALUES
(101, 'Alice Johnson', 'Librarian', 65000.00, 1121),
(102, 'Bob Samuel', 'Assistant Librarian', 20000.00, 1122),
(103, 'Clara Dinesh', 'Library Attendant', 18000.00, 1123),
(104, 'David Paul', 'Manager', 77000.00, 1124),
(105, 'Eva Krishnan', 'Assistant Librarian', 22000.00, 1125),
(106, 'Fayaz Rahman', 'Librarian', 28000.00, 1126),
(107, 'George Varghese', 'Library Attendant', 17000.00, 1127),
(108, 'Hannah Nair', 'Librarian', 56000.00, 1128),
(109, 'Ishaan Thomas', 'Assistant Librarian', 21000.00, 1129),
(110, 'Jiya Ramesh', 'Library Attendant', 19000.00, 1130),
(111, 'Kiran Joseph', 'Librarian', 74000.00, 1131),
(112, 'Lina Mathew', 'Assistant Librarian', 53000.00, 1132),
(113, 'Madhav Pillai', 'Library Attendant', 16000.00, 1133),
(114, 'Nandita Suresh', 'Librarian', 45000.00, 1134),
(115, 'Omar Shaikh', 'Assistant Librarian', 22000.00, 1135),
(116, 'Pooja Menon', 'Library Attendant', 18000.00, 1136),
(117, 'Ravi Kumar', 'Librarian', 27000.00, 1137),
(118, 'Sanjana Nair', 'Assistant Librarian', 21000.00, 1138),
(119, 'Tarun Raj', 'Library Attendant', 19000.00, 1139),
(120, 'Usha Sharma', 'Librarian', 76000.00, 1140);

SELECT * FROM Employee;

-- Creating table 3.Books
CREATE TABLE Books(
ISBN INT PRIMARY KEY,
Book_Title VARCHAR (100),
Category VARCHAR (50),
Rental_Price DECIMAL(10,2),
Status VARCHAR (5), 
Author VARCHAR (50),
Publisher VARCHAR (50)
);

DESC Books;

-- Inserting values to Books table
INSERT INTO Books (ISBN, Book_Title, Category, Rental_Price, Status, Author, Publisher) VALUES
(801, 'The Night Circus', 'Novel', 120.00, 'Yes', 'Erin Morgenstern', 'Doubleday'),
(802, 'Harry Potter and the Sorcerer\'s Stone', 'Novel', 150.00, 'Yes', 'J.K. Rowling', 'Scholastic'),
(803, 'To Kill a Mockingbird', 'Novel', 110.00, 'No', 'Harper Lee', 'HarperCollins'),
(804, 'Fahrenheit 451', 'Fiction', 90.00, 'Yes', 'Ray Bradbury', 'Simon & Schuster'),
(805, 'The Great Gatsby', 'Novel', 100.00, 'No', 'F. Scott Fitzgerald', 'Scribner'),
(806, 'The Book Thief', 'Historical Fiction', 130.00, 'Yes', 'Markus Zusak', 'Knopf'),
(807, 'Romeo and Juliet', 'Drama', 80.00, 'Yes', 'William Shakespeare', 'Penguin Classics'),
(808, 'Macbeth', 'Drama', 75.00, 'No', 'William Shakespeare', 'Signet Classics'),
(809, 'The Road', 'Fiction', 125.00, 'Yes', 'Cormac McCarthy', 'Vintage'),
(810, 'A History of World War II', 'History', 120.00, 'Yes', 'Winston Churchill', 'Houghton Mifflin');

SELECT * FROM Books;

-- Creating table 4.Customer
CREATE TABLE Customer(
Customer_ID INT PRIMARY KEY,
Customer_Name VARCHAR(50),
Customer_Address VARCHAR(100),
Reg_Date DATE 
);

DESC Customer;

-- Inserting values to Customer table
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Reg_Date) VALUES
(201, 'Arun Nair', 'Arun Bhavan, Trivandrum, Kerala', '2025-01-01'),
(202, 'Sreelatha Menon', 'Sreevihar, Kochi, Kerala', '2025-01-02'),
(203, 'Ravi Kumar', 'Kumar Vilas, Thrissur, Kerala', '2025-01-03'),
(204, 'Geetha Devi', 'Geethalaya, Kottayam, Kerala', '2025-01-04'),
(205, 'Anil Raj', 'Raj Residency, Alappuzha, Kerala', '2022-01-05'),
(206, 'Meera Thomas', 'Meera Villa, Malappuram, Kerala', '2025-01-06'),
(207, 'Vijayan Pillai', 'Vijayan Kuteer, Kozhikode, Kerala', '2025-01-07'),
(208, 'Latha Krishnan', 'Krishna Bhavan, Kannur, Kerala', '2025-01-08'),
(209, 'Ramesh Kumar', 'Ramesh Nagar, Palakkad, Kerala', '2021-01-09'),
(210, 'Shalini R', 'Shalini Enclave, Pathanamthitta, Kerala', '2021-01-10');

SELECT * FROM Customer;

-- Creating table 5.IssueStatus
CREATE TABLE IssueStatus(
Issue_ID INT PRIMARY KEY,
Issued_Cust INT,
Issued_Book_Name VARCHAR(100),
Issue_Date DATE,
ISBN_Book INT,
FOREIGN KEY (Issued_Cust) REFERENCES Customer(Customer_ID),
FOREIGN KEY (ISBN_Book) REFERENCES Books(ISBN)
);

-- Inserting values to IssueStatus table
INSERT INTO IssueStatus(Issue_ID, Issued_Cust, Issued_Book_Name, Issue_Date, ISBN_Book) VALUES
(1001, 201, 'The Night Circus', '2025-01-11', 801),
(1002, 202, 'Harry Potter and the Sorcerer\'s Stone', '2025-01-12', 802),
(1003, 203, 'To Kill a Mockingbird', '2025-01-13', 803),
(1004, 204, 'Fahrenheit 451', '2025-01-14', 804),
(1005, 205, 'The Great Gatsby', '2023-06-15', 805),
(1006, 206, 'The Book Thief', '2025-01-16', 806),
(100, 207, 'Romeo and Juliet', '2025-01-17', 807),
(1008, 208, 'Macbeth', '2025-01-18', 808);

SELECT * FROM IssueStatus;

-- Creating table ReturnStatus
CREATE TABLE ReturnStatus(
Return_ID INT PRIMARY KEY,
Return_Cust INT,
Return_Book_Name VARCHAR(100),
Return_Date DATE,
ISBN_Book2 int,
FOREIGN KEY (ISBN_Book2) REFERENCES Books(ISBN),
FOREIGN KEY (Return_Cust) REFERENCES Customer(Customer_ID)
);

DESC ReturnStatus;

-- Inserting values to ReturnStatus table
INSERT INTO ReturnStatus (Return_ID, Return_Cust, Return_Book_Name, Return_Date, ISBN_Book2) VALUES
(526, 201, 'The Night Circus', '2025-01-21', 801),
(527, 202, 'Harry Potter and the Sorcerer\'s Stone', '2025-01-22', 802),
(528, 203, 'To Kill a Mockingbird', '2025-01-23', 803),
(529, 204, 'Fahrenheit 451', '2025-01-24', 804),
(530, 205, 'The Great Gatsby', '2025-01-25', 805),
(531, 206, 'The Book Thief', '2025-01-26', 806);

SELECT * FROM ReturnStatus;


# 1. Rerieve the book title,category, and rental prices of all available book.
SELECT Book_Title, Category, Rental_Price,Status FROM Books WHERE Status = 'Yes';

# 2. List the employees names and their respective salaries is descending order of salary
SELECT Emp_Name, Salary FROM Employee ORDER BY SALARY DESC;

# 3. Retrive the book titles and the corresponding customers who have issued those books
SELECT b.Book_Title, i.Issued_Cust, c.Customer_Name  FROM IssueStatus i 
JOIN Books b ON i.ISBN_Book = b.ISBN
jOIN Customer c ON i.Issued_Cust = c.Customer_ID;

# 4. Display the total count of books in each category
SELECT Category, count(category) AS Total_Books FROM Books GROUP BY Category;

# 5. Retrive the employees names and their positions for the employees whose salaries are above RS.50,000
SELECT Emp_Name, Position, Salary FROM Employee 
WHERE Salary>50000;

# 6. List the customers names who registered before 2022-01-01 and have not issued any books yet
SELECT c.Customer_Name, c.Reg_Date FROM Customer c 
LEFT JOIN IssueStatus i ON c.Customer_ID = i. Issued_Cust
WHERE c.Reg_Date < '2022-01-01' AND i.Issue_ID IS NULL;

# 7. Display the branch numbers and the total count of employees in each branch
SELECT Branch_No, COUNT(*) AS Total_Employees FROM Employee GROUP BY Branch_no;

# 8. Display the names of customers who have issued books in the month of june 2023
SELECT c.Customer_ID, c.Customer_Name FROM Customer c 
join IssueStatus i ON c.Customer_ID = i.Issued_Cust
where i.Issue_Date BETWEEN '2023-06-01' AND '2023-06-30';

# 9. Retrive Book_Title from book table containing history
SELECT Book_Title FROM Books WHERE Book_Title LIKE '%History%';

# 10. Retrive the branch numbers along with the count of employees for branches having more than 5 employees
SELECT Branch_No,count(*) AS Total_Employees FROM Employee GROUP BY Branch_No
HAVING count(*) >5;

# 11 . Retrive the names of employees who manage branches and their respective branch addresses
SELECT e.Emp_Name, b.Branch_Address FROM Employee e 
JOIN Branch b ON e.Branch_No = b.Branch_NO
WHERE e.Position = 'Manager';

# 12. Display the names of customers who have issued books with a rental price higher than RS 25
SELECT c.Customer_Name FROM Customer c 
JOIN IssueStatus i ON c.Customer_ID = i.Issued_Cust
JOIN Books b ON i.ISBN_Book = b.ISBN
WHERE b.Rental_Price > 25;
