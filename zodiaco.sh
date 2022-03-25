#!/bin/bash
currentYear=$(date +%Y)
currentMonth=$(date +%m)
currentDay=$(date +%d)


echo "Cual es tu Nombre: "
read nombre
echo "Introduzca su mes: "
read mes
echo "Introduzca su dia: "
read dia
echo "Introduzca su año: "
read anio

yearsOld=$((currentYear-anio))
age=0

case $mes in
Enero | enero | 1 | 01)
   if [ $dia -ge "21" ]
   then
   signo="Acuario"
   mes=1
   else
   signo="Capricornio"
   mes=1
   fi
   ;;
Febrero | febrero | 2 | 02)
   if [ $dia -ge "20" ]
   then
   signo="Piscis"
   mes=2
   else
   signo="Acuario"
   mes=2
   fi
    ;;
Marzo | marzo | 3 | 03)
   if [ $dia -ge "21" ]
   then
   signo="Aries"
   mes=3
   else
   signo="Piscis"
   mes=3
   fi
   ;;
Abril | abril | 4 | 04)
   if [ $dia -ge "21" ]
   then
   signo="Tauro"
   mes=4
   else
   signo="Aries"
   mes=4
   fi
   ;;
Mayo | mayo | 5 | 05)
   if [ $dia -ge "22" ]
   then
   signo="Geminis"
   mes=5
   else
   signo="Tauro"
   mes=5
   fi
   ;;
Junio | junio | 6 | 06)
   if [ $dia -ge "22" ]
   then
   signo="Cancer"
   mes=6
   else
   signo="Geminis"
   mes=6
   fi
   ;;
Julio | julio | 7 | 07)
   if [ $dia -ge "23" ]
   then
   signo="Leo"
   mes=7
   else
   signo="Cancer"
   mes=7
   fi
   ;;
Agosto | agosto | 8 | 08)
   if [ $dia -ge "23" ]
   then
   signo="Virgo"
   mes=8
   else
   signo="Leo"
   mes=8
   fi
   ;;
Septiembre | septiembre | 9 | 09)
   if [ $dia -ge "23" ]
   then
   signo="Libra"
   mes=9
   else
   signo="Virgo"
   mes=9
   fi
   ;;
Octubre | octubre | 10 | 010)
   if [ $dia -ge "23" ]
   then
   signo="Escorpio"
   mes=10
   else
   signo="Libra"
   mes=10
   fi
   ;;
Noviembre | noviembre | 11 | 011)
   if [ $dia -ge "23" ]
   then
   signo="Sagitario"
   mes=11
   else
   signo="Escorpio"
   mes=11
   fi
   ;;
Diciembre | diciembre | 12 | 012)
   if [ $dia -ge "22" ]
   then
   signo="Capricornio"
   mes=12
   else
   signo="Sagitario"
   mes=12
   fi
   ;;
*)
   signo="Mes no correcto"
   ;;
esac
if (( $currentMonth >= $mes )); then
        if (( $currentDay >= $dia )); then
                let age=$yearsOld
                echo "$nombre, tu eres del signo zodiacal, $signo y tienes $age de edad"
        else
                let age=$(( yearsOld-1 ))
                echo "$nombre, tu eres del signo zodiacal, $signo y tienes $age de edad"
        fi
else
        let age=$(( yearsOld-1 ))
        echo "$nombre, tu eres del signo zodiacal, $signo y tienes $age de edad"
fi

months=0
if (( $yearsOld==$age )); then
        let months=$(( currentMonth-mes ))
        echo "Con $months mes(es)"
else
        let months=$(( 12-mes ))
        let months+=$currentMonth
        echo "Con $months mes(es)"
fi

if (( $currentDay >= $dia )); then
       #echo "Con $months mes(es)"
        if (( $currentDay == $dia )); then
                echo "Con 0 dias"
        else
                echo "Con $(( currentDay-dia )) dias"
        fi
else
        #echo "Con $(( months-1)) mes(es)"
        echo "Con $currentDay dias"
fi



