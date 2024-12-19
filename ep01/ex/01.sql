-- Ex1: Quantos produtos temos da categoria 'artes'?
-- RESPOSTA: Temos 55 produtos na categoria 'Artes'

-- contagem 

SELECT 
      count(*) AS qtde_rows,
      count(product_id) AS qtde_products,
      count(DISTINCT product_id) as qtde_products_distincts,
      count(DISTINCT product_category_name) as qtde_categories_distincts

from tb_products
 
where product_category_name = 'artes'
