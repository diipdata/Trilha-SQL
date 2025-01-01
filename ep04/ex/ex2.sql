-- Ex2
-- Qua o valor total de receita média e total gerada por sellers de cada estado? 
-- Considere a base completa, com apenas pedidos entregues

SELECT 
        t1.seller_state,
        ROUND(SUM(t2.price), 2) AS total_revenue,
        ROUND(sum(t2.price) / COUNT( DISTINCT t1.seller_id ), 2) AS AVG_revenue_seller,
        COUNT(DISTINCT t1.seller_id) as qty_sellers

FROM tb_sellers AS t1

LEFT JOIN tb_order_items AS t2
ON t1.seller_id = t2.seller_id

LEFT JOIN tb_orders AS t3
ON t2.order_id = t3.order_id

WHERE t3.order_status = 'delivered'

GROUP BY t1.seller_state