SELECT  query_name
       ,ROUND(AVG(rating / position),2)                                           AS quality
       ,ROUND((SUM(CASE WHEN rating < 3 THEN 1 else 0 end) / COUNT(*)) * 100.0,2) AS poor_query_percentage
FROM Queries
GROUP BY  query_name
HAVING query_name IS NOT NULL;