#!/bin/bash

resolver_nome_de_dominio() {
  echo "Digite o endereço de um site para resolver seu dominio: (exemplo www.terra.com.br)"
  read -r site
  dig +short "$site"
}

testar_disponibilidade() {
  echo "Digite o endereço de um site para checar se ele está disponível: (exemplo www.terra.com.br)"
  read -r site
  temp=$(ping -c 5 "$site")
  if [[ $? -eq 0 ]]; then
    echo "$site Disponivel"
  fi
}

relatorio_disponibilidade_rede() {
  echo "Digite o nome do arquivo contendo os endereços ip ou http dos sites que deseja checar a disponibilidade: "
  read -r nome_arquivo
  echo "Relatório - $(date)" >>resultado.txt
  for i in $(cat "$nome_arquivo"); do
    temp=$(ping -c 5 "$i")
    if [[ $? -eq 0 ]]; then
      echo "$i up" >>resultado.txt
    else
      echo "$i down" >>resultado.txt
    fi
  done

  #while read -r linha; do
  # echo $linha
  #teste=$(ping -c 5 "$linha")
  #echo "$teste" >temp.txt
  #if grep -qi "100% packet loss" temp.txt; then
  #  echo "$linha" down >>resultado.txt
  # else
  #   echo "$linha" up >>resultado.txt
  # fi
  #done <"$nome_arquivo"
  #rm temp.txt
  echo -e "\n" >>resultado.txt
  echo "Operação concluida!"
  #cat resultado.txt
}

select op in Resolver Verificar Relatório Sair; do
  case "$op" in
  Resolver)
    resolver_nome_de_dominio
    ;;
  Verificar)
    testar_disponibilidade
    ;;
  Relatório)
    relatorio_disponibilidade_rede
    ;;
  *)
    echo "Opção invalida, tente novamente"
    ;;
  esac
done
exit 0
