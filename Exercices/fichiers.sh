# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: fichiers.sh
# @Last modified by:   suika
# @Last modified time: 22-08-2019

#!/bin/sh

j=0
k=0
l=0

if [ "$#" -eq 0 ]; then
    echo "Saisir le répertoire à analyser : "
    read -r rep
else
    rep=$1
fi

cd $rep

for i in *; do
    if [ -d "$i" ]; then
        echo "$i"
        let j=$j+1
    elif [ -x "$i" ]; then
      echo $i
      let l=$l+1
    elif [ -f "$i" ]; then
        echo $i
        let k=$k+1
    fi
done
echo "Il y a $j répertoires, $k fichiers et $l exécutables dans $rep."
