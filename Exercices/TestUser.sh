# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: TestUser.sh
# @Last modified by:   suika
# @Last modified time: 22-08-2019

#!/bin/bash

# Un script qui propose un menu permettant de choisir entre vérifier si
# un utilisateur existe, obtenir des informations sur un utilisateur
# et quitter le script

function pause {
    echo "Appuyez sur entrée pour continuer"
    read
}

function saisirUser {
    echo "Saisir l'utilisateur : "
    read -r util
}

function verifyUser {
    if grep "^$util:" /etc/passwd > /dev/null; then
        echo "L'utilisateur existe."
    else
        echo "L'utilisateur n'existe pas."
    fi
    pause
}

rep=1
while [ "$rep" -eq 1 ]; do
    clear
    printf "menu :\n\n"
    echo "1. Vérifier l'existence d'un utilisateur"
    echo "2. Connaître l'UID d'un utilisateur"
    echo -e "3. Quitter\n"
    read -r choix
    case "$choix" in
        1)
            saisirUser
            verifyUser ;;

        2)
            saisirUser
            id $util
            pause ;;
        3)
            echo "Au revoir"
            pause
            rep=0 ;;
        q)
            echo "Au revoir"
            pause
            rep=0 ;;
        *)
            echo "Erreur de saisie"
            pause ;;
    esac
done
