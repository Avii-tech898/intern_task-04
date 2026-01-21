Customer & Sales Analysis with SQL


Purpose

This project demonstrates how to analyze customer, order, and product data using SQL. By applying JOINs and aggregations, it calculates important business metrics such as product revenue, category performance, and regional sales.

Key Features

Per-Order Revenue

Combines orders, customers, and products using INNER JOIN.

Calculates revenue for each order using quantity * price.

Customers without Orders

Uses LEFT JOIN to identify customers who haven’t made any purchases.

Revenue by Product

Groups sales by product and sums revenue.

Sorts to show top-earning products.

Revenue by Category

Aggregates total sales for each product category.

Regional Sales Analysis

Filters orders for the North region during January 2025.

Database Setup

The analysis uses the following tables:

customers (customerid, customername, region)

orders (orderid, customerid, productid, quantity, orderdate)

products (productid, productname, price, categoryname)

This SQL script works with MySQL, PostgreSQL, or SQLite.
