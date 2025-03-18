VARIABLE1="HELLO GOOD MORNING"
VARIABLE2=HELLO GOOD MORNING

echo "$VARIABLE1"
echo "...  $VARIABLE1... "

for input in $VARIABLE1 ;
do 
echo "$input"
done 

for out in "$VARIABLE1" ;
do 
echo " $out "
done

for rest in $VARIABLE2 ;
do 
echo "$rest"
done 

for focus in "$VARIABLE2" ;
do 
echo " $focus "
done
