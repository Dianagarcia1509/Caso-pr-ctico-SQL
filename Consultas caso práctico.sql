
Consultas sobre la tabla menu_items

Número de artículos en el menú
SELECT COUNT(*) AS total_items
FROM menu_items;

Artículo menos caro y más caro
SELECT item_name, price
FROM menu_items
ORDER BY price ASC
LIMIT 1;

SELECT item_name, price
FROM menu_items
ORDER BY price DESC
LIMIT 1;

Número de platos americanos en el menú
SELECT COUNT(*) AS total_americanos
FROM menu_items
WHERE category = 'American';

Precio promedio de los platos
SELECT ROUND(AVG(price), 2) AS avg_price
FROM menu_items;

Consultas sobre la tabla order_details

Número de pedidos únicos en total
SELECT COUNT(DISTINCT order_id) AS total_pedidos
FROM order_details;

5 pedidos con mayor número de artículos
SELECT order_id, COUNT(item_id) AS num_articulos
FROM order_details
GROUP BY order_id
ORDER BY num_articulos DESC
LIMIT 5;

Primer pedido y último pedido
SELECT MIN(order_date) AS primer_pedido,
       MAX(order_date) AS ultimo_pedido
FROM order_details;

Pedidos entre 2023-01-01 y 2023-01-05
SELECT COUNT(DISTINCT order_id) AS pedidos_rango
FROM order_details
WHERE order_date BETWEEN '2023-01-01' AND '2023-01-05';

JOIN entre order_details y menu_items
SELECT od.order_details_id,
       od.order_id,
       od.order_date,
       od.order_time,
       od.item_id,
       mi.item_name,
       mi.category,
       mi.price
FROM order_details od
LEFT JOIN menu_items mi
  ON od.item_id = mi.menu_item_id;

Análisis adicional (5 insights)

1. Platillos más vendidos (Top 5)
SELECT mi.item_name, COUNT(*) AS total_vendidos
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY total_vendidos DESC
LIMIT 5;

2. Categorías más populares por número de ventas
SELECT mi.category, COUNT(*) AS total_vendidos
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.category
ORDER BY total_vendidos DESC;

3. Ingreso total generado por cada platillo (Top 5)
SELECT mi.item_name,
       ROUND(SUM(mi.price),2) AS ingresos_totales
FROM order_details od
JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY mi.item_name
ORDER BY ingresos_totales DESC
LIMIT 5;

4. Día con más pedidos realizados
SELECT order_date, COUNT(DISTINCT order_id) AS total_pedidos
FROM order_details
GROUP BY order_date
ORDER BY total_pedidos DESC
LIMIT 1;

5. Ticket promedio (valor promedio por pedido)
SELECT ROUND(AVG(ticket),2) AS ticket_promedio
FROM (
    SELECT od.order_id, SUM(mi.price) AS ticket
    FROM order_details od
    JOIN menu_items mi ON od.item_id = mi.menu_item_id
    GROUP BY od.order_id
) sub;
