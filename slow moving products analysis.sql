SELECT p.productCode, p.productName, p.quantityInStock, 
       SUM(od.quantityOrdered) AS total_sold
FROM products p
LEFT JOIN orderdetails od ON p.productCode = od.productCode
GROUP BY p.productCode, p.productName, p.quantityInStock
HAVING total_sold < (p.quantityInStock * 0.1)  -- Less than 10% of stock sold
ORDER BY total_sold ASC;
