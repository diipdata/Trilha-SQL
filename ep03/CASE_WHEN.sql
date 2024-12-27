SELECT 
    DISTINCT CASE WHEN product_category_name ISNULL THEN 'outros'
                ELSE product_category_name
             END AS categoria_fillna

FROM tb_products

ORDER BY categoria_fillna