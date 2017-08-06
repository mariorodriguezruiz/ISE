# Crea en mysql y en mongo una base de datos, una tabla 
# e inserta 10000 elementos en la tabla creada.

#!/bin/bash

myuser=root
mypass=1982
max=6

echo "--Tiempos en mysql--" >> tiempos.txt

for i in `seq 1 $max`
do
start=`date +%s%3N`
mysql -u$myuser -p$mypass < mysql.sql 
end=`date +%s%3N`
runtime=$((end-start))
printf "\nTiempo $i (milisegundos) \t$runtime ">> tiempos.txt
done
printf "\n\n"

printf "\n--Tiempos en mongo--" >> tiempos.txt
for i in `seq 1 $max`
do
start=`date +%s%3N`
mongo < mongo.mg 
end=`date +%s%3N`
runtime=$((end-start))
printf "\nTiempo $i (milisegundos) \t$runtime ">> tiempos.txt
done