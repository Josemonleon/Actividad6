

numeroPar=0
numeroImpar=0
indice =0
resto =0

for  x in `seq 1 12` ; do 

	indice=`cat numeros.txt | head -$x | tail -1`
	resto=indice%2


	 if [ $resto -eq 0 ];then
		echo "El número $indice es par"
		numeroPar=$ ( ( $numeroPar + 1 ) ) 
	else
		echo "El número $indice es impar"
		numeroImpar=$ ( ( $numeroImpar + 1 ) )
	fi
done

echo"Hay $numeroPar números pares"
echo"Hay $numeroImpar números impares"
