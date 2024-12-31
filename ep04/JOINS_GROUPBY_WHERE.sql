-- considerando as vendas de 2017 e pedidos entregues
-- Qual a receita de cada categoria de produtos?
-- e o total de vendas?
-- em unidades e em pedidos?

-- select * from tb_products  -- tabela de produtos

-- select * from tb_orders  -- tabela de vendas

SELECT
      t2.product_category_name,
      SUM(t1.price) AS revenue,
      COUNT(*) AS qty_itens_sell,
      COUNT(DISTINCT t1.order_id) as qty_orders,
      ROUND (COUNT(*) / CAST (COUNT(DISTINCT t1.order_id) AS FLOAT), 2) AS AVG_ITENS_ORDERS

FROM tb_order_items as t1

LEFT JOIN tb_products as t2
ON t1.product_id = t2.product_id

LEFT JOIN tb_orders as t3
ON t1.order_id = t3.order_id

WHERE t3.order_status = 'delivered'
AND CAST (strftime('%Y', t3.order_approved_at) as INT) = '2017'

GROUP BY t2.product_category_name
ORDER BY COUNT(*) / CAST (COUNT(DISTINCT t1.order_id) AS FLOAT) DESC

LIMIT 10