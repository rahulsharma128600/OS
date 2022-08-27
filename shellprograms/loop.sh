echo "Print numbers from 1 to 10"
echo "Using Traditional FOR loop"

for (( i=1;i<11;i++ ))
do
	echo "$i"
done

#----------------------
echo "Using WHILE loop"
n=1
while [ $n -lt 11 ]
do
	echo "$n"
	n=`expr $n + 1`
done

#----------------------
echo "Using UNTIL loop"
u=1
until [ $u -gt 10 ]
do
	echo "$u"
	u=$(($u+1))
done

#----------------------
echo "Using Shell Script FOR loop"
for d in {1..10}
do
	echo "$d"
done

#----------------------
echo "Print String using shell script"
for f in ram sham raman chaman 
do 
	echo "$f"
done

