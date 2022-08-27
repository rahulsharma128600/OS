echo "Enter name"
read name
echo ${name^^}

if [ ${name^^} = "INDIAN" ]
then
	echo "You are indian"
else
	echo "You are foreigner"
fi
