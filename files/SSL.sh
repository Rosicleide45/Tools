#/bin/bash
clear
[[ "$(whoami)" != "root" ]] && {
	clear
	echo -e "ACCESSING ROOT..."
	sudo -i;
	sleep 1
}
clear
echo -e "UPDATING REPOSITORS, PLEASE WAIT..."
sleep 3
apt update; apt upgrade -y; clear
echo -e "Installing zip file manager..."
sleep 2
apt install zip -y; apt install unzip -y
cd /etc; rm -rf ssl stunnel; clear
echo -e "Replacing SSL certificates..."
sleep 3
wget --no-check-certificate https://github.com/WebManagerSSH/Tools/blob/main/files/ssl.zip?raw=true
unzip ssl.zip; rm ssl.zip; rm SSL.sh; clear
echo -e "SSL certificate update completed."
echo -e "Restart the server for the changes "
echo -e "take effect immediately!!"
