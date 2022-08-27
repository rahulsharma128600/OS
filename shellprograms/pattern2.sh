read -p "Enter the number of rows you want to print : " num

for ((i=0;i<num;i++))
do
	for ((j=0;j<=i;j++))
	do
		echo -n "$num "
	done

	echo " "
done

