numeroProcesosWindows=0
numeroProcesosLinux=0
numeroWindows=0
numeroLinux=0

indiceSo=0
indiceProcesos=0

for  x in `seq 1 19` ; do
	indiceSo=`cat listado.txt | awk ’{print $2}’ | head -$x | tail -1 `  /*Guarda si es W o Linux de cada linea*/
	indiceProcesos=`cat listado.txt | awk ’{print $3}’ | head -$x | tail -1 `

	 if [ $indiceSo -eq "Windows" ];then 
		numeroWindows=$ ( ( $numeroWindows +1 ) )
		numeroProcesosWindows=$ ( ( $numeroProcesos + $indiceProcesos ) )
	fi

	if [ $indiceSo -eq "Linux" ];then 
                numeroLinux=$ ( ( $numeroWindows +1 ) )
		numeroProcesosLinux=$ ( ( $numeroProcesos + $indiceProcesos ) )
        fi
done

echo"Linux-> $numeroLinux $numeroProcesosLinux "
echo"Windows-> $numeroWindows $numeroProcesosWindows" 

