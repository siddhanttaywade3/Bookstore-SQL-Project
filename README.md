# Bookstore Management SQL Project (PostgreSQL)

## Project Overview

This project demonstrates SQL concepts using PostgreSQL by building and querying a Bookstore database.

The database stores information about books, customers, and orders. Various SQL queries are performed to analyze sales, customers, and inventory.

---

## Tech Stack

- PostgreSQL 18
- pgAdmin 4
- SQL
- CSV Data Import

---

## Database Schema

The project contains three tables:

### Books
- Book_ID (Primary Key)
- Title
- Author
- Genre
- Published_Year
- Price
- Stock

### Customers
- Customer_ID (Primary Key)
- Name
- Email
- Phone
- City
- Country

### Orders
- Order_ID (Primary Key)
- Customer_ID (Foreign Key)
- Book_ID (Foreign Key)
- Order_Date
- Quantity
- Total_Amount

---

## Data Import

Data was imported using PostgreSQL COPY command from CSV files.

Tables imported:

- Books.csv
- Customers.csv
- Orders.csv

Total records imported:

- Books: 500
- Customers: 500
- Orders: 500

---

## SQL Queries Performed

### Basic Queries

- Retrieve all books
- Retrieve all customers
- Retrieve all orders

### Filtering

- Books in Fiction genre
- Books published after 1950
- Orders placed in November 2023

### Sorting

- Top 3 most expensive books

### Aggregate Functions

- Count customers with at least two orders
- Most frequently ordered book

### Joins

- Customers who spent more than $30
- Customer and book relationship analysis

---

## SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- BETWEEN
- LIMIT
- COUNT()
- GROUP BY
- HAVING
- INNER JOIN
- FOREIGN KEY
- PRIMARY KEY
- COPY Command

---

## Project Screenshots

Screenshots of:

- Table Creation
- Data Import
- SQL Query Execution
- Query Results

are included in this repository.

---

##  Learning Outcomes

Through this project I learned:

- Database design
- Table creation
- Importing CSV data
- Writing SQL queries
- Filtering and sorting data
- Aggregate functions
- Joins
- Relational database concepts

---

## Author

**Siddhant Taywade**


