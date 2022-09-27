#!/bin/bash
 
torcer(){
    echo $1 
}
 
executar(){
   PS3='Select which tool you want to use: '
   options=("Update system" "Access root" "Active root" "Active SSL" "Go out")
   select opt in "${options[@]}"
   do
      echo "Preparing to start: $opt..."
      case $opt in

       "Update system") torcer "Vai Corinthians!!!" ;;
       "Access root") torcer "Vai Corinthians!!!" ;;
       "Active root") torcer "Vai Corinthians!!!" ;;
       "Active SSL") torcer "Vai Corinthians!!!" ;;
       "Go out") break ;;

         *) echo "Invalid option ($REPLY)" ;;
      esac
   done
}
 
clear;
executar
clear;
