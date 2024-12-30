

SELECT 
    DISTINCT CASE WHEN product_category_name IS NULL THEN 'outros'
                  
                  WHEN product_category_name = 'alimentos'
                       OR product_category_name = 'alimentos_bebidas' then 'alimentos'

                  WHEN product_category_name in ('artes', 'artes_e_artesanato') then 'artes'

                  WHEN product_category_name LIKE '%artigos%' THEN 'artigos'

                ELSE product_category_name
             END AS categoria_fillna

FROM tb_products

ORDER BY categoria_fillna