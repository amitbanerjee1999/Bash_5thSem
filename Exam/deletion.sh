file=$1

echo -n "" > temp.txt

for line in $(<$file)
do
    echo $line
    echo -n "Delete record (y/n) ? "
    read ans
    
    if [ $ans != 'y' ]
    then
        echo $line >> temp.txt
    fi
done

cat temp.txt > $file
rm temp.txt