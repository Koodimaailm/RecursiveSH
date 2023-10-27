#!/bin/bash

echo ""
echo "Näidis kaustade loomine"

sleep 3

mkdir -p kaust/{kaust1,kaust2,kaust3}

echo ""


read -p "Kaust: " f
read -p "Pikkus:" l
#read -p "Logi faili nimi: " m
kaust="$f"
pikkus="$l"
#mkaust="$m"

nimekiri=$(find "$kaust" -type f -name '*' -print | awk -v pikkus="$pikkus" 'length($0) > pikkus')

#echo "$nimekiri" >> $mkaust

sortimine=$(echo "$nimekiri" | sort)

echo ""
echo "Sortitud failide kuvamine"
echo "$sortimine" | less

echo ""
echo "Logi salvestamine"

sleep 3

echo "$sortimine" >> logi


echo ""
echo "Fail salvestatud"

