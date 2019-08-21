# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: puissance.sh
# @Last modified by:   suika
# @Last modified time: 21-08-2019

#!/bin/bash

echo "Saisir une valeur : "
read -r nb

result=1

for (( i=0 ; i<$nb ; i++ ))
  do
    let result=$result*$nb
  done
echo "$nb^$nb = $result"
