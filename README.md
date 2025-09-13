# Caso práctico SQL
1. Exploración del menú (`menu_items`)
- **Número de artículos en el menú:** 32 productos.  
- **Artículo más barato:** *Edamame* – $5.00.  
- **Artículo más caro:** *Shrimp Scampi* – $19.95.  
- **Número de platos americanos:** 6.  
- **Precio promedio del menú:** $13.29.  

---

### 2. Exploración de los pedidos (`order_details`)
- **Pedidos únicos realizados:** 5,370 pedidos distintos.  
- **Top 5 pedidos con más artículos:** todos tuvieron 14 artículos (ejemplo: pedidos #4305, #3473, #2675, #1957 y #443).  
- **Primer y último pedido:**  
  - Primer pedido registrado: `2023-01-01`.  
  - Último pedido registrado: `2023-03-31`.  
- **Pedidos entre el 1 y 5 de enero de 2023:** 308 pedidos únicos.  

---

### 3. Análisis conjunto (`JOIN` entre menú y pedidos)
El `LEFT JOIN` permitió relacionar las órdenes con los detalles del menú, obteniendo información sobre qué productos se vendieron, en qué cantidades y los ingresos generados.

---

### 4. Insights clave para el restaurante

1. **Platillos más vendidos:**  
   - *Hamburger* (622)  
   - *Edamame* (620)  
   - *Korean Beef Bowl* (588)  
   - *Cheeseburger* (583)  
   - *French Fries* (571)  

   👉 Los clientes prefieren opciones rápidas y conocidas (hamburguesas y papas fritas), además de platillos asiáticos como *Edamame* y *Korean Beef Bowl*.  

2. **Categorías más populares:**  
   - Asian (3,470 ventas)  
   - Italian (2,948 ventas)  
   - Mexican (2,945 ventas)  
   - American (2,734 ventas)  

   👉 La cocina asiática es la más solicitada, seguida de la italiana y mexicana.  

3. **Ingresos por producto (Top 5):**  
   - *Korean Beef Bowl* – $10,554.60  
   - *Spaghetti & Meatballs* – $8,436.50  
   - *Tofu Pad Thai* – $8,149.00  
   - *Cheeseburger* – $8,132.85  
   - *Hamburger* – $8,054.90  

   👉 Aunque las hamburguesas son muy vendidas, los platillos asiáticos e italianos generan mayores ingresos.  

4. **Día con más pedidos:** El **1 de febrero de 2023** con 87 pedidos únicos.  
   👉 Este día puede estar relacionado con promociones, eventos o patrones de consumo estacionales.  

5. **Ticket promedio:** $29.80 por pedido.  
   👉 Útil para diseñar estrategias de ventas cruzadas y combos que aumenten el gasto promedio.  

---

## Conclusión
El análisis permitió identificar qué productos tienen mayor rotación e impacto en ingresos. Con esta información, los dueños del restaurante pueden:  
- Mantener y promover los productos estrella.  
- Rediseñar o ajustar el precio de los productos con baja demanda.  
- Aprovechar los días de mayor actividad con estrategias de marketing.  
- Implementar combos o promociones para aumentar el ticket promedio.  
