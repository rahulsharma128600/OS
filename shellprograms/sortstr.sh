read -p "Enter the file name in which you want to add details : " filename
read -p "Enter the number of names you want to add in $filename : " num
echo "Enter the names you want to add in the file : "
for ((i=1;i<=num;i++))
do
	read names
	echo "$names" >> "$filename"
done

echo "Added names in "$filename" : " 
ls ./"$filename"

echo "1. show names in ascending order"
echo "2. show names in descending order"

read ch
case $ch in

	"1") sort "$filename";;

	"2") sort -r "$filename";;

	*) echo "Invalid";;
esac




