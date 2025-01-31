SELECT productCode, productName, quantityInStock,
       ROUND(quantityInStock * 0.95, 0) AS new_quantity_after_reduction
FROM products;
