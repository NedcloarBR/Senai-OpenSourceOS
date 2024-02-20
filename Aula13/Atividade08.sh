#!/bin/bash

names="Kyle Cartman Stan Sair"
PS3="Selecione Aluno: "
select name in $names; do
  if [ $name == "Sair" ]; then
    break
  fi
  echo Hello $name
done

echo Bye
