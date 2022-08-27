read -p "Enter a string to get length : " str

num=`echo "$str" | wc -c`
num=`expr $num - 1`
#num=$(($num-1))
echo "length of $str is $num"
