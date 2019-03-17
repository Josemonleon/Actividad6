dias=10
litros=0
mediaLitros=0

for  x in `seq 1 10` ; do
litros=litros+ `cat precipitaciones.txt | Awk ’{print $1}’ | head -x | tail -1
done

mediaLitros=$ ( ( litros/dias ) )

echo "La média de litros es de $mediaLitros"
