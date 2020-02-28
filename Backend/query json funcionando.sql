SELECT data->>'Timestamp' AS time , count(*)
FROM acq_Analogico_Hs0
GROUP BY time
ORDER BY count DESC LIMIT 10;
