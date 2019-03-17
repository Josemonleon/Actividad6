
read –p “Introduce el directorio que deseas borrar” x

totalArchivos=`ls $x | wc -l`
cantidadArchivos=0

for  x in `seq 1 $totalArchivos` ; do

        indice =`ls $x | awk '{print $1}' | head -$x | tail -1 | find . -name "*.txt"  ’`


                if [ $indice  ];then  
                        rm $indice
                        cantidadArchivos=$ ( ( $cantidadArchivos + 1 ) )
		else
			echo"El archivo no existe"
                fi 

echo"Se han borrado $cantidadArchivos archivos"

