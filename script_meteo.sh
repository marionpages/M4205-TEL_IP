#!/bin/bash
#echo "Nous sommes le : $(weather lfmu | awk '{print $4}' | cut -c1-2 | head -n 2 | tail -n 1) $(weather lfmu | awk '{print $3}' | head -n 2 | tail -n 1 | sed s/Feb/Février/g) $(weather lfmu | awk '{print $5}' | head -n 2 | tail -n 1)" > meteo.txt
#echo $(date)
echo "Nous sommes le : $(date | cut -c1-25) il est $(date | cut -c28-32 | sed "s/:/ heure /g")" > meteo.txt
echo "Voici la météo du jour : " >> meteo.txt
echo "Lhumidité est de : $(weather lfmu | awk '{print $3}' | head -n 4 | tail -n 1)" >> meteo.txt
echo "La température est de : $(weather lfmu | awk '{print $4,$5}' | head -n 3 | tail -n 1 | cut -c2-3) degrés" >> meteo.txt
vent_mph=$(weather lfmu | awk '{print $8}' | head -n 5 | tail -n 1)
vent_kmh=$(echo "$vent_mph*1.60934" | bc | awk '{printf("%d\n",$1 + 0.5)}')
echo "Le vent est de : $vent_kmh kilomètres par heure" >> meteo.txt 
