#!/bin/bash

PLANSZA=('1' '2' '3' '4' '5' '6' '7' '8' '9')
GRACZ=$(( RANDOM % 2 + 1 ))
SYMBOL=$( 
    if [ $GRACZ  -eq  "1" ] 
        then
        ZNAK="X"
    else
        ZNAK="O"
    fi
    echo $ZNAK
)

function wyswietl {
    clear
    echo "------------- KÓŁKO I KRZYŻYK ------------- "
    echo "Gracz 1 (X)         -           Gracz 2 (O)"
    printf "\n"
    printf  "         |         |  \n"
    echo  "    ${PLANSZA[0]}    |    ${PLANSZA[1]}    |    ${PLANSZA[2]}  "
    printf "_________|_________|_________\n"
    printf  "         |         |  \n"
    echo  "    ${PLANSZA[3]}    |    ${PLANSZA[4]}    |    ${PLANSZA[5]}  "
    printf "_________|_________|_________\n"
    printf  "         |         |  \n"
    echo  "    ${PLANSZA[6]}    |    ${PLANSZA[7]}    |    ${PLANSZA[8]}  "
    printf  "         |         |  \n"
    printf "\n"
}

while [ true ] 
    do
        wyswietl	
        echo "Gracz $GRACZ, podaj numer: "
        read WYBOR

        if [ $WYBOR  -eq  "1" ] && [ $WYBOR  -eq  1 ]
        then
            PLANSZA[0]=$SYMBOL
        elif [ $WYBOR  -eq  "2" ] && [ $WYBOR  -eq  2 ]
        then
            PLANSZA[1]=$SYMBOL
        elif [ $WYBOR  -eq  "3" ] && [ $WYBOR  -eq  3 ]
        then
            PLANSZA[2]=$SYMBOL
        elif [ $WYBOR  -eq  "4" ] && [ $WYBOR  -eq  4 ]
        then
            PLANSZA[3]=$SYMBOL
        elif [ $WYBOR  -eq  "5" ] && [ $WYBOR  -eq  5 ]
        then
            PLANSZA[4]=$SYMBOL
        elif [ $WYBOR  -eq  "6" ] && [ $WYBOR  -eq  6 ]
        then
            PLANSZA[5]=$SYMBOL
        elif [ $WYBOR  -eq  "7" ] && [ $WYBOR  -eq  7 ]
        then
            PLANSZA[6]=$SYMBOL
        elif [ $WYBOR  -eq  "8" ] && [ $WYBOR  -eq  8 ]
        then
            PLANSZA[7]=$SYMBOL
        elif [ $WYBOR  -eq  "9" ]  && [ $WYBOR  -eq  9 ]
        then
            PLANSZA[8]=$SYMBOL
        else
            echo "Niewłaściwy numer"
        fi

    done
    wyswietl	


