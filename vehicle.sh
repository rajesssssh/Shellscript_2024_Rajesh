echo "enter the file name to read"
read file_name

echo -e "please select filters by choosing below options \n1)colour \n2)model \n3)price"
read option 
if [ $option -eq 1 ]
then
echo "please enter the colour which u want to"
read colour
echo "Below are the vehicles which are $colour in colour"

while read line
do
check=`echo "$line" | awk -F " " '{print $2}'`
if [ $check == $colour ]
then
echo "$line" | awk -F " " '{print $1}'
fi
done < $file_name

elif [ $option -eq 2 ]
then
echo "please enter the model which you want to filter"
read model
echo "Below are the vehicles which are manufactured before $model"

while read line
do
check=`echo "$line" | awk -F " " '{print $3}'`
if [ $check -le $model ]
then
echo "$line" | awk -F " " '{print $1}'
fi
done < $file_name

elif [ $option -eq 3 ]
then
echo "please enter the price of vehicle"
read price
echo "Below are the vehicles which are priced above $price"

while read line
do
check=`echo "$line" | awk -F " " '{print $4}'`
if [ $check -gt $price ]
then
echo "$line" | awk -F " " '{print $1}'
fi
done < $file_name

else
echo "invalid option"
fi

#script for colour model amd price
#
#script
