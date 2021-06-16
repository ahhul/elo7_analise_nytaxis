#!/bin/bash

# Laco para o download dos arquivos csv referentes as viagens dos taxis amarelos em new york
for i in $(seq 1 12); do
if [[ $i -le 9 ]]
then 
    aws s3 cp s3://nyc-tlc/trip' 'data/yellow_tripdata_2020-0$i.csv  work/data/yellow_tripdata_2020-0$i.csv --no-sign-request
else 
    aws s3 cp s3://nyc-tlc/trip' 'data/yellow_tripdata_2020-$i.csv  work/data/yellow_tripdata_2020-$i.csv --no-sign-request
fi
done

# Download do arquivo com as informacoes referentes aos bairros de new york
aws s3 cp s3://nyc-tlc/misc/taxi' '_zone_lookup.csv work/data/taxi_zone_lookup.csv --no-sign-request
