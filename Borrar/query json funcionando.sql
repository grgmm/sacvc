SELECT data->>'Timestamp' AS time , count(*)
FROM acq_Analogico_Hs0
GROUP BY time
ORDER BY count DESC LIMIT 10;


#comandos postgres utilizados:
#GRANT ALL PRIVILEGES ON DATABASE sacvc_db TO morenomx; Otorgar todos los privilegios al usuario postgres morenomx
#En shell de linux:
#cat datos.json | psql -U morenomx -h localhost -p 5432 sacvc_db -c "COPY acq_Analogico_Hs0(data) FROM STDIN;"

