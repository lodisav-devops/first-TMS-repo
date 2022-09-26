#!/bin/bash

curl -o MyFin.txt https://myfin.by/currency/minsk

dollars_course=`cat MyFin.txt | sed -n '/.*Доллар США/s///p' | sed 's/Евро.*//'| sed -e 's/<\/a>/ /g; s/<\/td>/ /g; s/<td>/ /g' | tr '[:space:]' '[\n*]'| sed '/^$/d' | sed -n 3p`

euro_course=`cat MyFin.txt | sed -n '/.*Евро <\/a>/s///p' | sed 's/Российский рубль.*//' | sed -e 's/<\/td>/ /g; s/<td>/ /g' | tr '[:space:]' '[\n*]' | sed '/^$/d' | sed -n 3p`

russ_rouble_course=`cat MyFin.txt | sed -n '/.*Российский рубль <sup> 100/s///p' | sed 's/Польский злотый <sup> 10.*//' | sed -e 's/<\/sup>/ /g; s/<\/a>/ /g; s/<\/td>/ /g; s/<td>/ /g' | tr '[:space:]' '[\n*]' | sed '/^$/d' | sed -n 3p`

zloty_course=`cat MyFin.txt | sed -n '/.*Польский злотый <sup> 10/s///p' | sed 's/Гривна <sup> 100.*//' | sed -e 's/<\/sup>/ /g; s/<\/a>/ /g; s/<\/td>/ /g; s/<td>/ /g' | tr '[:space:]' '[\n*]' | sed '/^$/d' | sed -n 3p`

grivna_course=`cat MyFin.txt | sed -n '/.*Гривна <sup> 100/s///p' | sed 's/<sup class="down"><\/sup>.*//' | sed -e 's/<\/sup>/ /g; s/<\/a>/ /g; s/<\/td>/ /g; s/<td>/ /g' | tr '[:space:]' '[\n*]' | sed '/^$/d' | sed -n 3p`

read -p "Please enter currency (dollar, euro, russian_ruble, zloty, grivna):" variant

case $variant in
    "dollar") echo "This is course 1 dollar = $dollars_course blr rouble (course NBRB)";;
    "euro") echo "This is course 1 euro = $euro_course blr rouble (course NBRB)";;
    "russian_ruble") echo "This is course 100 russ rouble = $russ_rouble_course blr rouble (course NBRB)";;
    "zloty") echo "This is course 10 polish zloty = $zloty_course blr rouble (course NBRB)";;
    "grivna") echo "This is course 100 ukr grivna = $grivna_course blr rouble (course NBRB)";;
    *) echo "You entered a currency not from the specified list (dollar, euro, russian_ruble, zloty, grivna)"
esac

rm MyFin.txt
