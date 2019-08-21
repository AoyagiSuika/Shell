# @Author: Dahak Déborah <suika>
# @Date:   21-08-2019
# @Email:  deborah.dahak@gmail.com
# @Project: Reprise
# @Filename: note_v3.sh
# @Last modified by:   suika
# @Last modified time: 21-08-2019

#!/bin/sh

if [ "$#" -eq 0 ]; then
  echo "Entrez votre note : "
  read -r note
else
  note=$1
fi

if [ "$note" -ge 16 ]; then
  echo "Très bien."
elif [ "$note" -ge 14 ]; then
  echo "Bien."
elif [ "$note" -ge 12 ]; then
  echo "Assez bien."
elif [ "$note" -ge 10 ]; then
  echo "Moyen."
else
  echo "Insuffisant."
fi
