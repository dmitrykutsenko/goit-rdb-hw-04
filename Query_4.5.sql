SELECT 
		cat.name AS category_name,
		COUNT(*) AS rows_in_group,
		AVG(det.quantity) AS avg_quantity
FROM products prd
INNER JOIN suppliers sup ON sup.id = prd.supplier_id
INNER JOIN categories cat ON cat.id = prd.category_id
INNER JOIN order_details det ON det.product_id = prd.id
INNER JOIN orders ord ON ord.id = det.order_id
INNER JOIN clients cl ON cl.id_client = ord.customer_id
INNER JOIN employees emp ON emp.employee_id = ord.employee_id
INNER JOIN shippers shp ON shp.id = ord.shipper_id
GROUP BY cat.name
HAVING AVG(det.quantity) > 21