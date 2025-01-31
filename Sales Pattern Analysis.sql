SELECT p.productCode, p.productName, p.MSRP, 
       SUM(od.quantityOrdered) AS total_sold,
       SUM(od.quantityOrdered * od.priceEach) AS total_revenue
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
GROUP BY p.productCode, p.productName, p.MSRP
ORDER BY total_sold DESC;
