SELECT COUNT(*) AS total_rows
FROM products prd
LEFT JOIN suppliers sup ON sup.id = prd.supplier_id
LEFT JOIN categories cat ON cat.id = prd.category_id
LEFT JOIN order_details det ON det.product_id = prd.id
LEFT JOIN orders ord ON ord.id = det.order_id
LEFT JOIN clients cl ON cl.id_client = ord.customer_id
LEFT JOIN employees emp ON emp.employee_id = ord.employee_id
LEFT JOIN shippers shp ON shp.id = ord.shipper_id;
