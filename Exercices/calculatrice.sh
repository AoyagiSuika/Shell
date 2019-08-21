# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: calculatrice.sh
# @Last modified by:   suika
# @Last modified time: 22-08-2019

#!/bin/sh

# Une calculatrice basique

res=0

echo "Saisir le premier nombre : "
read -r nb1
echo "Saisir le signe de l'opération : "
read -r op
echo "Saisir le deuxième nombre : "
read -r nb2

calcul() {
  case $op in
    +)
      let res=$nb1+$nb2 ;;
    -)
      let res=$nb1-$nb2 ;;
    *)
      let res=$nb1*$nb2 ;;
    /)
      let res=$nb1/$nb2
esac

  echo "$nb1 $op $nb2 = $res"
}

calcul
