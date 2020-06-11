#!/bin/bash

echo "1.összdás"
echo "2.Kivonás"
echo "3.Szorzaás"
echo "4.Osztás"
echo "5.Négyzetre emelés"
echo "6.Gyökvonás"
echo "7.sin"
echo "8.cos"
echo "Válassz egy műveletet.(8)"
read choice
case $choice in
1)echo "Első szám"
  read n1
  echo "Második szám"
  read n2
  echo eredmeny=$((n1+n2))
  ;;
2)echo "Első szám"
  read n1
  echo "Második szám"
  read n2
  echo eredmeny=$((n1-n2))
  ;;
3)echo "Első szám"
  read n1
  echo "Második szám"
  read n2
  echo eredmeny=$((n1*n2))
  ;;
4)echo "Első szám"
  read n1
  echo "Második szám"
  read n2
  if [  n2==0 ]
  then
  echo "0-val nem lehet osztani"
  else 
  echo eredmeny=$((n1/n2))
  fi
;;
5)echo "Kérem a sz�mot"
  read n1
  echo eredmeny=$((n1*n1))
  ;;
6)echo "Kérem a számot"
read n1
echo - | awk '{print sqrt('$n1')}'
;;
7)echo "Kérem a számot"
read a
b=`echo - | awk '{print (('$a' * 3.14159) / 180 )}'`
z=`echo - | awk '{print sin('$b')}'`
echo $z
;;
8) echo "Kérem a számot"
read a
b=`echo - | awk '{print (('$a' * 3.14159) / 180)}'`
z=`echo - | awk '{print cos('$b')}'`
echo $z 
;;
9)exit ;;
esac

