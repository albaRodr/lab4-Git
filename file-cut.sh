#!/bin/bash

# Cortando ficheros
# Busca los ficheros .fastq
ficheros="./*.fastq"
# Inicia el bucle que corta los ficheros
for i in $ficheros;  do
	totFilas=$(wc -l "$i"| cut -d ' ' -f 1) # líneas que tienen los ficheros en total
	filasNuevas=$((totFilas/29)) # líneas que vamos a guardar
	head -n $filasNuevas $i > "${i}_out" # las guardamos en el fichero i_out 
	rm $i #eliminamos el archivo original
	mv "${i}_out" $i # y lo sustituimos por el nuevo
	echo "El fichero $i ha sido cortado" 
done






