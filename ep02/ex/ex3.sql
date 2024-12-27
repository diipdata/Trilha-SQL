-- Ex3. Faça uma query que apresente o tamanho médio, 
-- máximo e mínimo do nome do objeto por categoria. 
-- Considere apenas os objetos que tenham a descrição maior que 100.

SELECT
        product_category_name,
        MIN(product_name_lenght) AS MIN_name_lenth,
        MAX(product_name_lenght) AS MAX_name_lenth,
        AVG(product_name_lenght) AS AVG_name_lenth

FROM tb_products

WHERE product_category_name IS NOT NULL
AND product_description_lenght > 100

GROUP BY product_category_name