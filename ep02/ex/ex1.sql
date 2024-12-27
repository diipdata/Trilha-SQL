-- Ex1. Faça uma query que apresente o tamanho médio, 
-- máximo e mínimo da descrição do objeto por categoria

SELECT
        product_category_name,
        MIN(product_description_lenght) AS MIN_descrip_lenth,
        MAX(product_description_lenght) AS MAX_descrip_lenth,
        AVG(product_description_lenght) AS AVG_descrip_lenth


FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

LIMIT 5