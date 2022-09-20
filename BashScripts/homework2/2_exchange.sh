#!/bin/bash

#Всего словосочетаний "continuous integration" на странице
a=`curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -o "continuous integration" | wc -l`

#Всего словосочетаний "CI" на странице
b=`curl https://www.atlassian.com/continuous-delivery/continuous-integration | grep -o "CI" | wc -l`
echo "Словосочетаний 'CI' на Web-странице = $b"

#Cловосочетаний "continuous integration" на странице после замены их на "CI"
c=`curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed 's/continuous integration/CI/g' | grep -o "continuous integration" | wc -l`

#Cловосочетаний "CI" на странице после замены
d=`curl https://www.atlassian.com/continuous-delivery/continuous-integration | sed 's/continuous integration/CI/g' | grep -o "CI" | wc -l`
diff=$(($d-$b))
echo ""
echo ""
echo ""
echo "Словосочетаний 'continuous integration' на Web-странице до замены = $a"
echo "Словосочетаний 'CI' на Web-странице до замены = $b"
echo "Общее количество словосочетаний 'CI' на Web-странице после замены = $d, при этом добавлено новых - $diff, осталось словосочетаний 'continuous integration' - $c"
