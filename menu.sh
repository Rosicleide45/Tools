#!/bin/bash
 
torcer(){
    echo $1 
}
 
executar(){
   PS3='Selecione o time de coração: '
   options=("Corinthians" "São Paulo" "Palmeiras" "SAIR")
   select opt in "${options[@]}"
   do
      echo "Preparando para torcer para o $opt..."
      case $opt in
         "Corinthians")
            torcer "Vai Corinthians!!!"
            ;;
         "São Paulo")
            torcer "Vai São Paulo!!!"
            ;;
         "Palmeiras")
            torcer "Vai Palmeiras!!!"
            ;;
         "SAIR")
            break
            ;;
         *) echo "Opção inválida ($REPLY)";;
      esac
   done
}
 
executar
