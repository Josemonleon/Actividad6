
read -p "Indica el número de subdirectorios que quieres crear: " x

numeroPersonas=`cat /home/alumno/actividad6B/nombres.txt | wc -l`


for j in `seq 1 $numeroPersonas`;do
	nombrePersona=`cat /home/alumno/actividad6B/nombres.txt | head -$j | tail -1`
echo "hola"
	mkdir $nombrePersona

echo "hola 2"
	cd $nombrePersona
echo "hola 3"
	for r in `seq 1 $x`;do
		mkdir personal$r
	done
	cd ..
done

echo "Paso correc