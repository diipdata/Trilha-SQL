SELECT *

FROM (

    SELECT 
        seller_state,
        count(*) AS qty_sellers

    FROM tb_sellers

    -- WHERE seller_state IN ('SP', 'RJ', 'PR')

    GROUP BY seller_state

)

WHERE qty_sellers > 10