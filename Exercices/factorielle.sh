# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: factorielle.sh
# @Last modified by:   suika
# @Last modified time: 22-08-2019

#!/bin/sh

# Un calcul de factorielle

res=1
i=1

if [ "$#" -eq 0 ]; then
  echo "Veuillez entrer un nombre  : "
  read -r nb
else
  nb=$1
fi

if [ "$nb" -lt 0 ]; then
  let nb=-1*$nb
fi

base=$nb

factorielle() {
  if [ $nb -gt 0 ]; then
    let res=$i*$base
    let i=$i+1
    let nb=$nb-1
    factorielle
  else
    return
  fi
}

factorielle

echo "La factorielle de $base est $res."
