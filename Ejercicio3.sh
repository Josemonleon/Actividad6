
nombreDia=""

for  x in `seq 1 10` ; do

diaSemana=`cat precipitaciones.txt | Awk ’{print $1}’ | head -x | tail -1
muestralitros= `cat precipitaciones.txt | Awk ’{print $2}’ | head -x | tail -1

if [ $muestraLitros==0 ];then

	if [ $diaSemana==1 || $diaSemana==8 ] then 
    		 nombreDia="Lunes"

	elif [ $diaSemana==2 || $diaSemana==9 ] then 
     		nombreDia="Martes"
 
	elif [ $diaSemana==3 || $diaSemana==10 ] then 
     		nombreDia="Miercoles"

	elif [ $diaSemana==4 ] then 
     		nombreDia="Jueves"
 
	elif [ $diaSemana==5 ] then 
     		nombreDia="Viernes"

	elif [ $diaSemana==6 ] then 
     		nombreDia="Sabado"

	elif [ $diaSemana==8 ] then 
     		nombreDia="Domingo"
	fi

echo"El $nombreDia dia $x ha llovido"
fi 





done


