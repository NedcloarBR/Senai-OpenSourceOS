#!/bin/sh

echo "teste1 > exemplo1.txt"
echo "teste2 > exemplo2.txt"

arquivos=$(ls *txt)

for i in $arquivos; do
  cat $i >>todos_exemplos.txt
done
