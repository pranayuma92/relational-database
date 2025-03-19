#!/bin/bash

# Koneksi ke database postgre
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

# Jika tidak ada argumen yang diberikan
if [[ -z $1 ]]; then
  echo "Please provide an element as an argument."
  exit 0
fi

# Cek apakah input angka (atomic_number) atau huruf (symbol/name)
if [[ $1 =~ ^[0-9]+$ ]]; then
  QUERY="SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number=$1;"
else
  QUERY="SELECT atomic_number, name, symbol, type, atomic_mass, melting_point_celsius, boiling_point_celsius FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE symbol='$1' OR name='$1';"
fi

# Eksekusi query
RESULT=$($PSQL "$QUERY")

# Jika hasil kosong, elemen tidak ditemukan print pesan ini
if [[ -z $RESULT ]]; then
  echo "I could not find that element in the database."
  exit 0
fi

# Parse hasil query
echo "$RESULT" | while IFS="|" read -r ATOMIC_NUMBER NAME SYMBOL TYPE ATOMIC_MASS MELTING_POINT BOILING_POINT; do
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."
done
