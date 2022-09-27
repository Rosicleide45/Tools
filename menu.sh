#!/bin/bash
 
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 3 ; tput bold ; printf '%40s%s%-12s\n' "MENU OF TOOLS" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo ""
echo -e "             \033[1;31mWARNING! \033[1;33mTHIS SCRIPT WILL GO !\033[0m"
echo ""
echo -e "             \033[1;33m  ACTIVATE YOUR ROOT ACCESS\033[0m"
echo ""
echo -e "\033[1;31m≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×\033[0m"
echo ""; 
sleep 2s; 
 
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
 
executar
