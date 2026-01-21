SELECT * FROM customer_db.joined_output;
-- INNER JOIN: Orders with Customers
SELECT 
    o.order_id,
    c.customer_name,
    p.product_name,
    o.quantity,
    (o.quantity * p.price) AS revenue
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
INNER JOIN products p ON o.product_id = p.product_id;
SELECT * FROM customers;

SELECT * FROM orders;
SELECT * FROM products;
-- LEFT JOIN: Customers without orders
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
LEFT JOIN products p 
    ON o.product_id = p.product_id;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;
-- Revenue per Product
SELECT 
    p.product_name,
    SUM(o.quantity * p.price) AS total_revenue
FROM products p
INNER JOIN orders o 
    ON p.product_id = o.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;
-- Category-wise Revenue
SELECT 
    category_name,
    SUM(quantity * price) AS category_revenue
FROM products
JOIN orders ON products.product_id = orders.product_id
GROUP BY category_name
ORDER BY category_revenue DESC;
-- Sales in North region during Jan 2025
SELECT 
    SUM(o.quantity * p.price) AS north_region_sales
FROM orders o
INNER JOIN customers c 
    ON o.customer_id = c.customer_id
INNER JOIN products p
    ON o.product_id = p.product_id
WHERE c.region = 'North'
  AND o.order_date BETWEEN '2025-01-01' AND '2025-01-31';









