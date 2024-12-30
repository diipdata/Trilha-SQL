SELECT DISTINCT 
        COALESCE(product_category_name, 'outros') as categoria_fillNA

FROM tb_products
