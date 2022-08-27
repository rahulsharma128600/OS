read -p "Enter the number of rows you want to print : " num

x=1
for ((i=0;i<num;i++))
do
	for ((j=0;j<=i;j++))
	do
		echo -n "$x "
		#x=$(($x+1))
	done
	x=$(($x+1))
	echo ""
done
			


