read -p "Enter the file name, you want details of : " filename
read -p "Enter the string you want to search in the file : " str

det1=$(grep "$str" $filename | wc -l)
det2=$(grep -v "$str" $filename | wc -l)



echo "Number of lines, in which searched string present = $det1" 
#grep "$str" "$filename" | wc -l
echo " "
echo "Number of lines in which searched string not present = $det2"
#grep -v "$str" "$filename" | wc -l
