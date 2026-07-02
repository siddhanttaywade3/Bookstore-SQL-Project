

-- Create Tables

CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);

CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);

CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;


-- Import Data into Books Table
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock) 
FROM 'C:\Users\Asus\Documents\ST - SQL ALL PRACTICE FILES SD61\ST - SQL ALL PRACTICE FILES-2\All Excel Practice Files\Books.csv' 
CSV HEADER;

-- Import Data into Customers Table
COPY Customers(Customer_ID, Name, Email, Phone, City, Country) 
FROM 'C:\Users\Asus\Documents\ST - SQL ALL PRACTICE FILES SD61\ST - SQL ALL PRACTICE FILES-2\All Excel Practice Files\Customers.csv' 
CSV HEADER;

-- Import Data into Orders Table
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount) 
FROM 'C:\Users\Asus\Documents\ST - SQL ALL PRACTICE FILES SD61\ST - SQL ALL PRACTICE FILES-2\All Excel Practice Files\Orders.csv' 
CSV HEADER;

--execution of queries 
--1)Retrieving all books in the "Fiction" genre:
SELECT * FROM Books WHERE Genre='Fiction';

--2)Finding books published after the year 1950:
   SELECT * FROM Books  WHERE Published_year>1950;

-- 3) Orders placed in November 2023:
   SELECT * FROM Orders  WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30';

-- 4)Details of the most expensive book:
    SELECT * FROM Books ORDER BY Price DESC LIMIT 3;

-- 5) List of customers who have placed at least 2 orders:
   SELECT o.customer_id, c.name, COUNT(o.Order_id) AS ORDER_COUNT FROM orders o
   JOIN customers c ON o.customer_id=c.customer_id GROUP BY o.customer_id, c.name
   HAVING COUNT(Order_id) >=2;
--6)Finding the most frequently ordered book:
   SELECT o.Book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT FROM orders o
   JOIN books b ON o.book_id=b.book_id GROUP BY o.book_id, b.title
   ORDER BY ORDER_COUNT DESC LIMIT 1;
-- 7) List the cities where customers who spent over $30 are located:
  SELECT DISTINCT c.city, total_amount FROM orders o JOIN customers c ON o.customer_id=c.customer_id
  WHERE o.total_amount > 30;

