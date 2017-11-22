#!/bin/bash
clear

echo "---------------------------------------------------------------"
echo "Написать скрипт который 
1) совершает обход всего дерева каталогов, начиная с каталога, указанного в позиционном параметре;
2) выводит на stdout все дерево каталогов с соотв. отступами, указывая для каждого файла (не являющегося бинарным) количество содержащихся в нем строк."
echo "---------------------------------------------------------------"

#!/bin/bash

if [ -d $1 ]
then
  DIR=$1
else
  echo "Неверно задан каталог"
  exit 0
fi

for file in `find $DIR`     
do
  str=`echo $file | grep -o / | wc -l`
  if [ -d $file ] 
  then
   echo "Directory: $file"
   i=1
    while [ "$i" -le $str ]
    do
     echo -n "  "
     ((i++))
    done
  elif [ -f $file ]
   then
    ifbin=`file --mime-encoding $file | awk '{if ($2 == "binary") print "0"}'`
    if [ -e $ifbin ]
     then
     i=1
      while [ "$i" -le $str ]
      do
       echo -n "  "
       let i=i+1  
      done
     lq=`wc -l $file | awk '{print $1}'`
     echo "File: $file has $lq lines."
    fi
  fi
done
echo -e "\v---------------------------------------------------------------"
echo "Have a good day!"
echo "---------------------------------------------------------------"
