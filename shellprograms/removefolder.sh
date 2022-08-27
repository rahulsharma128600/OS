echo "Enter path and folder name to remove"
read path folder
rm -r $path/$folder
echo "Check your folder deleted or not"
ls $path
