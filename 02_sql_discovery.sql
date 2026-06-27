
-- Lista todos los productos únicos disponibles usando un alias de columna descriptivo
SELECT DISTINCT producto AS producto_disponible
FROM ventas
ORDER BY producto ASC;

-- Pedidos del primer trimestre mayor a 5 unidades
SELECT 
order_id,DATE(fecha) AS fecha,producto,cantidad
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-03-31'
AND cantidad > 5;


-- Vendedores cuyo ingreso bruto total (cantidad × precio) supera $10,000 USD.
SELECT 
    vendedor,
    SUM(cantidad * precio_unitario) AS ingreso_bruto_total
FROM ventas
GROUP BY vendedor
HAVING SUM(cantidad * precio_unitario) > 10000
ORDER BY ingreso_bruto_total DESC;

-- Vendedores cuyo ingreso bruto total (cantidad × precio) supera $10,000 USD.
SELECT 
    categoria,
    COUNT(order_id) AS total_pedidos,
    SUM(cantidad) AS unidades_vendidas,
    AVG(precio_unitario) AS precio_unitario_promedio
FROM ventas
GROUP BY categoria
ORDER BY unidades_vendidas DESC;

-- Crea la tabla vendedores (abajo) y calcula el % de cumplimiento de meta de cada uno.

DROP TABLE IF EXISTS vendedores;
                    
--Tabla:vendedores

CREATE TABLE vendedores(
    vendedor TEXT,
    meta REAL 
            );
                    
INSERT INTO vendedores VALUES
("Ana Lopez",25000),
("Carlos Ruiz",30000),
("Luis Mora",33000),
("Maria Torres",20000); 

SELECT 
    v.vendedor,
    v.meta,
    SUM(ventas.cantidad * ventas.precio_unitario) AS ingreso_real,
    ROUND((SUM(ventas.cantidad * ventas.precio_unitario) / v.meta) * 100, 2) AS porcentaje_cumplimiento
FROM vendedores v
JOIN ventas
ON v.vendedor = ventas.vendedor
GROUP BY v.vendedor, v.meta;""")

pd.read_sql("""
SELECT 
    v.vendedor,
    v.meta,
    SUM(ventas.cantidad * ventas.precio_unitario) AS ingreso_real,
    ROUND((SUM(ventas.cantidad * ventas.precio_unitario) / v.meta) * 100, 2) AS porcentaje_cumplimiento
FROM vendedores v
JOIN ventas
ON v.vendedor = ventas.vendedor
GROUP BY v.vendedor, v.meta;


-- Cliente con mayor ingreso total en el primer semestre
SELECT 
    cliente_nombre,
    SUM(cantidad * precio_unitario) AS ingreso_total
FROM ventas
WHERE fecha BETWEEN '2024-01-01' AND '2024-06-30'
GROUP BY cliente_nombre
ORDER BY ingreso_total DESC
LIMIT 1