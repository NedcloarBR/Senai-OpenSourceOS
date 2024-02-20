#!/bin/sh

echo "Ola mundo!"
nome="Alice"
echo "Olá, $nome!"

echo "Digite um novo nome: "
read -r novo_nome
nome="$novo_nome"
echo "Agora, o nome é $nome"

nome=$(cat matricula)
echo "Agora, o nome é $nome"
