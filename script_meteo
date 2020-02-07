#!/bin/bash

#echo $(weather lfmu)
#echo $(weather lfmu | awk '{print $3}' | head -n 4 | tail -n1 )
echo "Voici la météo du jour : " > meteo.txt
echo "Lhumidité est de : $(weather lfmu | awk '{print $3}' | head -n 4 | tail -n 1)" >> meteo.txt
echo "La température est de : $(weather lfmu | awk '{print $4,$5}' | head -n 3 | tail -n 1 | cut -c2-4)" >> meteo.txt
echo "Le vent est de : $(weather lfmu | awk '{print $8,$9}' | head -n 5 | tail -n 1)" >> meteo.txt
