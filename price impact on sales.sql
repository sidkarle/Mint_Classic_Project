SELECT p.productCode, p.productName, p.MSRP, 
       AVG(od.priceEach) AS avg_selling_price,
       SUM(od.quantityOrdered) AS total_sold
FROM orderdetails od
JOIN products p ON od.productCode = p.productCode
GROUP BY p.productCode, p.productName, p.MSRP
ORDER BY p.MSRP DESC;
