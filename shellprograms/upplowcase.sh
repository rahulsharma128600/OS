read -p "Enter a string to convert into upper to lower case and vice versa : " str

echo "Enter your choice"
echo "1. show string in uppercase"
echo "2. show string in lowercase"
echo "3. string as it is"

read choice
upp=`echo "$str" | tr "[a-z]" "[A-Z]"`
low=`echo "$str" | tr "[A-Z]" "[a-z]"`
case $choice in

#upp=`echo "$str" | tr "[a-z]" "[A-Z]" > upp`
#low=`echo "$str" | tr "[A-Z]" "[a-z]" > low`

"1") echo "$upp";;
"2") echo "$low";;
"3") echo "$str";;
*) echo "invalid string"
esac
		
		
