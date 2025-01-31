SELECT DATE_FORMAT(o.orderDate, '%Y-%m') AS month, 
       SUM(od.quantityOrdered) AS total_units_sold, 
       SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM orders o
JOIN orderdetails od ON o.orderNumber = od.orderNumber
GROUP BY month
ORDER BY month;

