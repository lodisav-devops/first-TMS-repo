#!/bin/bash

#Вариант с выводом указанной фразы в не зависимости от регистра
#var_1
curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -o -i "continuous integration" | wc -l

#var_2
curl https://www.atlassian.com/continuous-delivery/continuous-integration | tr '[:punct:]' '[\n*]' | grep -i -c "continuous integration"

#var_3
curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed -e s/[[:punct:]]/\\n/g | grep -i -c "continuous integration"

#var_4
curl https://www.atlassian.com/continuous-delivery/continuous-integration | tr '[:punct:]' '[\n*]' | awk '/[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Oo][Uu][Ss] [Ii][Nn][Tt][Ee][Gg][Rr][Aa][Tt][Ii][Oo][Nn]/' | wc -l

#var_5
curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed -e s/[[:punct:]]/\\n/g | awk '/[Cc][Oo][Nn][Tt][Ii][Nn][Uu][Oo][Uu][Ss] [Ii][Nn][Tt][Ee][Gg][Rr][Aa][Tt][Ii][Oo][Nn]/' | wc -l

#Вариант с выводом указанной фразы с указанным регистром
#var_1
curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -o "continuous integration" | wc -l

#var_2
curl https://www.atlassian.com/continuous-delivery/continuous-integration | tr '[:punct:]' '[\n*]' | grep -c "continuous integration"

#var_3
curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed -e s/[[:punct:]]/\\n/g | grep -c "continuous integration"

#var_4
curl https://www.atlassian.com/continuous-delivery/continuous-integration | tr '[:punct:]' '[\n*]' | awk '/continuous integration/' | wc -l

#var_5
curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed -e s/[[:punct:]]/\\n/g | awk '/continuous integration/' | wc -l

#Разница количества между вариантами (вне зависимости от регистра и определ. регистра)
a1=`curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -o -i "continuous integration" | wc -l`
b1=`curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -o "continuous integration" | wc -l`
diff=$(($a1-$b1))
echo ""
echo ""
echo ""
echo "Словосочетаний 'continuous integration' не учитывая регистр на Web-странице = $a1"
echo "Словосочетаний 'continuous integration' установл. регистра на Web-странице = $b1"
echo "Difference between all register and one variant = $diff"
