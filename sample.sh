#!/bin/bash
#===========================
# sample.sh
# Utworzenie: 11 list. 2021
# Autor: inż. Damian Barszcz
#===========================

PLANSZA=('1' '2' '3' '4' '5' '6' '7' '8' '9')
INFO_ZNAK=0
INFO_POLE=0
KONIEC=-1

#Wybor rozpoczynajcego gracza
GRACZ=$(( RANDOM % 2 + 1 ))

# Ustawienie symbolów graczy
SYMBOL=$( 
    if [ $GRACZ  ==  "1" ] 
        then ZNAK="X"
        else  ZNAK="O"
    fi
    echo $ZNAK
)

# Wyswietlenie obrazu gry
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

# Sprawdzenie wygranej i zakończenie gry
function sprawdz_wygrana {
        if [ ${PLANSZA[0]} == ${PLANSZA[1]}  ]  && [ ${PLANSZA[1]} == ${PLANSZA[2]}  ] 
                then echo "1"
            elif [ ${PLANSZA[3]} == ${PLANSZA[4]}  ]  && [ ${PLANSZA[4]} == ${PLANSZA[5]}  ]  
                then echo "1"
            elif [ ${PLANSZA[6]} == ${PLANSZA[7]}  ]  && [ ${PLANSZA[7]} == ${PLANSZA[8]}  ]  
                then echo "1"
            elif [ ${PLANSZA[0]} == ${PLANSZA[3]}  ]  && [ ${PLANSZA[3]} == ${PLANSZA[6]}  ]  
                then echo "1"
            elif [ ${PLANSZA[1]} == ${PLANSZA[4]}  ]  && [ ${PLANSZA[4]} == ${PLANSZA[7]}  ]  
                then echo "1"
            elif [ ${PLANSZA[2]} == ${PLANSZA[5]}  ]  && [ ${PLANSZA[5]} == ${PLANSZA[8]}  ]  
                then echo "1"
            elif [ ${PLANSZA[0]} == ${PLANSZA[4]}  ]  && [ ${PLANSZA[4]} == ${PLANSZA[8]}  ]  
                then echo "1"
            elif [ ${PLANSZA[2]} == ${PLANSZA[4]}  ]  && [ ${PLANSZA[4]} == ${PLANSZA[6]}  ]  
                then echo "1"
            elif [ ${PLANSZA[0]}  != "1" ] && [ ${PLANSZA[1]} != "2"  ]  && [ ${PLANSZA[2]} != "3"  ]  &&
                   [ ${PLANSZA[3]}  != "4" ] && [ ${PLANSZA[4]} != "5"  ]  && [ ${PLANSZA[5]} != "6"  ]  &&
                   [ ${PLANSZA[6]}  != "7" ] && [ ${PLANSZA[7]} != "8"  ]  && [ ${PLANSZA[8]} != "9"  ]  
                then echo "0"
            else echo "-1"
        fi
}

# Zmiana na następnego gracza, po ruchu poprzedniego gracza
function zmiana_gracza {
    if [ $GRACZ == "1" ] 
        then
            SYMBOL="O"
            ((GRACZ++))
        else
            SYMBOL="X"
            ((GRACZ--))
    fi
}

# Obsługa rozgrywki
while [ $KONIEC == "-1" ];
    do
        wyswietl	
        echo "Gracz $GRACZ: Proszę podać numer do wypełnienia: "

        if [ $INFO_ZNAK == 1 ]
        then
            printf "\nNiewłaściwy znak, podawaj wyłącznie numery od 1 do 9!\n"
        fi
        if [ $INFO_POLE == 1 ]
        then
            printf "\nTo pole zostało wypełnione, wybierz inna pozycje.\n"
        fi
        
        read WYBOR
        INFO_ZNAK=0
        INFO_POLE=0

        if [ $WYBOR  ==  "1" ]
            then
                if [ ${PLANSZA[0]}   !=  "O" ] &&  [ ${PLANSZA[0]}   !=  "X" ]
                    then
                        PLANSZA[0]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "2" ] 
            then
                if [ ${PLANSZA[1]}   !=  "O" ] &&  [ ${PLANSZA[1]}   !=  "X" ]
                    then
                        PLANSZA[1]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "3" ] 
            then
                if [ ${PLANSZA[2]}   !=  "O" ] &&  [ ${PLANSZA[2]}   !=  "X" ]
                    then
                        PLANSZA[2]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "4" ] 
            then
                if [ ${PLANSZA[3]}   !=  "O" ] &&  [ ${PLANSZA[3]}   !=  "X" ]
                    then
                        PLANSZA[3]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "5" ] 
            then
                if [ ${PLANSZA[4]}   !=  "O" ] &&  [ ${PLANSZA[4]}   !=  "X" ]
                    then
                        PLANSZA[4]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "6" ] 
            then
                if [ ${PLANSZA[5]}   !=  "O" ] &&  [ ${PLANSZA[5]}   !=  "X" ]
                    then
                        PLANSZA[5]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "7" ] 
            then
                if [ ${PLANSZA[6]}   !=  "O" ] &&  [ ${PLANSZA[6]}   !=  "X" ]
                    then
                        PLANSZA[6]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "8" ] 
            then
                if [ ${PLANSZA[7]}   !=  "O" ] &&  [ ${PLANSZA[7]}   !=  "X" ]
                    then
                        PLANSZA[7]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            elif [ $WYBOR  ==  "9" ]  
            then
                if [ ${PLANSZA[8]}   !=  "O" ] &&  [ ${PLANSZA[8]}   !=  "X" ]
                    then
                        PLANSZA[8]=$SYMBOL
                        zmiana_gracza
                    else INFO_POLE=1
                fi
            else INFO_ZNAK=1
        fi

    KONIEC=$(sprawdz_wygrana)
 done 

wyswietl	

# Komunikat kończący grę
if [ $KONIEC == 1 ] 
    then    
        if [ $GRACZ == 2 ]
            then echo "Gracz 1 wygrał."
            else  echo "Gracz 2 wygrał."
        fi
    else echo "Gra zakończyła się. Jest remis!"
fi
