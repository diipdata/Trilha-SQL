-- Ex2. Faça uma query que apresente o tamanho médio, 
-- máximo e mínimo do nome do objeto por categoria

SELECT
        product_category_name,
        MIN(product_name_lenght) AS MIN_name_lenth,
        MAX(product_name_lenght) AS MAX_name_lenth,
        AVG(product_name_lenght) AS AVG_name_lenth

FROM tb_products

WHERE product_category_name IS NOT NULL

GROUP BY product_category_name

LIMIT 5