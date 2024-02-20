#!/bin/sh

x=10
y=10

if [ $x -gt $y ]; then
  echo "x maior que y"
elif [ $y -gt $x ]; then
  echo "y maior que x"
else
  echo "x é igual a y"
fi
