#!/bin/bash
clear
[[ "$(whoami)" != "root" ]] && {
  echo -e "\033[1;33m[\033[1;31mErro\033[1;33m] \033[1;37m- \033[1;33mvocê precisa executar como root\033[0m"
  rm $HOME/Plus > /dev/null 2>&1; exit 0
}
clear
echo -e "UPDATING REPOSITORS, PLEASE WAIT..."
sleep 3
apt update; apt upgrade -y; apt install wget -y; clear
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 3 ; tput bold ; printf '%40s%s%-12s\n' "ATIVAÇÃO ROOT" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo ""
echo -e "             \033[1;31mATENCAO! \033[1;33mESSE SCRIPT IRA !\033[0m"
echo ""
echo -e "\033[1;33m  ATIVAR SEU ACESSO ROOT\033[0m"
echo ""
echo -e "\033[1;31m≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×\033[0m"
echo ""
[[ $(grep -c "prohibit-password" /etc/ssh/sshd_config) != '0' ]] && {
	sed -i "s/prohibit-password/yes/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "without-password" /etc/ssh/sshd_config) != '0' ]] && {
	sed -i "s/without-password/yes/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "#PermitRootLogin" /etc/ssh/sshd_config) != '0' ]] && {
	sed -i "s/#PermitRootLogin/PermitRootLogin/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "PasswordAuthentication" /etc/ssh/sshd_config) = '0' ]] && {
	echo 'PasswordAuthentication yes' > /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "PasswordAuthentication no" /etc/ssh/sshd_config) != '0' ]] && {
	sed -i "s/PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
} > /dev/null
[[ $(grep -c "#PasswordAuthentication no" /etc/ssh/sshd_config) != '0' ]] && {
	sed -i "s/#PasswordAuthentication no/PasswordAuthentication yes/g" /etc/ssh/sshd_config
} > /dev/null
service ssh restart > /dev/null
clear; 
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 3 ; tput bold ; printf '%40s%s%-12s\n' "ROOT ACTIVATION" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo ""
echo -e "             \033[1;31mWARNING! \033[1;33mTHIS SCRIPT WILL GO !\033[0m"
echo ""
echo -e "             \033[1;33m  ACTIVATE YOUR ROOT ACCESS\033[0m"
echo ""
echo -e "\033[1;31m≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×≠×\033[0m"
echo ""; 
sleep 2s; 
passwd;
clear;
cat /dev/null > ~/.bash_history && history -c
if [ -f /root/ActiveRoot.sh ]; then
	rm /root/ActiveRoot.sh
	true
else
	true
fi
if [ -f /root/wget-log ]; then
	rm /root/wget-log
	true
else
	true
fi
clear;
echo -e "\033[1;32m ROOT ACTIVATED SUCCESSFULLY!"
echo ""
