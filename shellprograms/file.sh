read -p "Enter two numbers separated by space : " x y
z=`echo "$x * $y" | bc`
echo "$z"
