echo "Enter two number separated by space"
read num1 num2

echo "Select operation you want to perform : +/-/*/ /"
read operator

if [ "$operator" = "+" ]
then
	add=$((num1 + num2))
	echo "Addition of $num1 and $num2 is $add"

elif [ "$operator" = "-" ]
then
	sub=$((num1 - num2))
	echo "Subtraction of $num1 and $num2 is $sub"

elif [ "$operator" = "*" ]
then
	mul=$((num1 * num2))
	echo "Multiplication of $num1 and $num2 is $mul"

elif [ "$operator" = "/" ]
then
	div=$((num1 / num2))
	echo "Division  of $num1 and $num2 is $div"
	
else
	echo "Wrong selection"
fi
