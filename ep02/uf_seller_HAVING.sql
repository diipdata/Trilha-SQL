SELECT 
      seller_state,
      count(*) AS qty_sellers

FROM tb_sellers

-- filter before aggregation
WHERE seller_state IN ('SP', 'RJ', 'PR', 'AC')

GROUP BY seller_state

-- filter after aggregation
HAVING count(*) > 10 -- removes states with less than 10 sellers