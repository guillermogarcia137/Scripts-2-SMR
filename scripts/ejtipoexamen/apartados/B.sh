archivo=../bien.txt

echo ""
echo ""
echo "Apartado B"
echo ""
echo ""
for $linea in `cat $archivo`
do
	expresion=`echo $linea | grep -E "[a-z0-9]{3,10}\:[admin|dev|hr|ventas]{1,}*,"`

	if [ $? -eq 0 ]
	then
		echo "$linea --- OK"
	else
		echo "$linea --- KO"
		lineasignoradas=$((lineasignoradas + 1))
	fi
done