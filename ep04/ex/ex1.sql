-- Ex1
-- Qual o valor total de receita gerada média por clientes de cada estado? 
-- Considere a base completa, com apenas pedidos entregues

SELECT
        t2.customer_state,
        t1.customer_id,
        ROUND( SUM(t3.price), 2) as AVG_RECEITA_ESTADO
        -- ROUND( SUM(t3.price) / COUNT( DISTINCT t3.order_id), 2) as AVG_RECEITA

FROM tb_orders AS t1

LEFT JOIN tb_customers as t2
ON t1.customer_id = t2.customer_id

LEFT JOIN tb_order_items as t3
ON t1.order_id	 = t3.order_id

WHERE t1.order_status = 'delivered'

GROUP BY t2.customer_state

LIMIT 10