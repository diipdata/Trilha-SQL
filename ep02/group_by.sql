SELECT
       product_category_name,
       count(*) as qty_products,
       MAX(product_weight_g) as greater_weight,
       MIN(product_weight_g) as lower_weight,
       AVG(product_weight_g) as avg_weight

FROM tb_products

WHERE product_category_name is not NULL

AND product_category_name != 'agro_industria_e_comercio'
AND product_category_name <> 'alimentos'

GROUP BY product_category_name