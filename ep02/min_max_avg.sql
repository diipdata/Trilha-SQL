SELECT MAX(product_weight_g) as greater_weight,
       MIN(product_weight_g) as lower_weight,
       AVG(product_weight_g) as avg_weight

FROM tb_products

limit 5
