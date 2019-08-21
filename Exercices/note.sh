# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: note.sh
# @Last modified by:   suika
# @Last modified time: 21-08-2019

#!/bin/sh

# Script qui affiche une appréciation en fonction de la note en argument

note=0;
moyenne=0;
i=0;

until [ "$note" -lt 0 ]; do

echo "Entrez votre note : ";
read -r note;

if [ "$note" = "q" ]; then
  note=-1
fi

  if [ "$note" -ge 16 ]; then
    echo "Très bien."
  elif [ "$note" -ge 14 ]; then
    echo "Bien."
  elif [ "$note" -ge 12 ]; then
    echo "Assez bien."
  elif [ "$note" -ge 10 ]; then
    echo "Moyen."
  elif [ "$note" -ge 0 ]; then
    echo "Insuffisant."
  else
    echo "Au revoir !"
  fi

  if [ "$note" -ge 0 ]; then
    let moyenne=$moyenne+$note
    let i=$i+1
  fi
done

if [ "$i" -le 0 ]; then
  let i=1
fi

let moyenne=$moyenne/$i
echo "La moyenne est de $moyenne ($i notes)."
