#!/bin/bash

var_change() {
  local var1="local 1"
  echo Função interna: var1 é $var1 : var2 é $var2
  var1="mudou novamente"
  var2="2 alterando novamente"
}

var1="global 1"
var2="global 2"

echo Antes da chamada da função var1 é $var1 : var2 é $var2

var_change

echo Após a chamada da função var1 é $var1 : var2 é $var2
