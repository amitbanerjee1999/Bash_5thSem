clear
echo "Enter the name of the file" 
read file1
echo "Roll Name Marks Grade" >> out1.txt
echo "=====================" >> out1.txt
if [ -f $file1 ]
then
  exec<$file1
  while read line 
  do
    set ` echo $line `
    echo -n  $1 "  " $2 " " $3 "   " >> out1.txt
    if [ $3 -ge 90 ]
    then
      echo -e O >> out1.txt
    elif [ $3 -ge 80 ]
    then
      echo -e E >> out1.txt
    elif [ $3 -ge 70 ]
    then
      echo -e A >> out1.txt
    elif [ $3 -ge 60 ]
    then
      echo -e B >> out1.txt
    elif [ $3 -ge 50 ]
    then 
      echo -e C >> out1.txt
    elif [ $3 -ge 40 ]
    then
      echo -e D >> out1.txt
    else
      echo -e Fail >> out1.txt
    fi
  done
cat out1.txt
else
echo "$file1 is not present"
rm out1.txt
fi
