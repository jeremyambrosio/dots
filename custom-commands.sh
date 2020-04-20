#!/bin/sh

#fix audio if it's stopped or you hit the mute button
fixaudio () {
	amixer -D pulse sset Master toggle
} 

#access PIA VPN
govpn ()  {
	cd /etc/open ; sudo openvpn US\ Chicago.ovpn
}

#fix the time when switching between OS
fixtime () {
	sudo ntpdate 1.ro.pool.ntp.org
}

#move config files into the github upload directory
github () {
	cd ~/.config;sudo cp -f compton.conf ~/dots;cd ~/.i3;sudo cp -f * ~/dots;cd ~/;sudo cp -f tips.txt ~/dots;sudo cp -f .custom-commands.sh ~/dots;cd /etc/default; sudo cp -f grub ~/dots;cd ~/;
}

#to finalize creation, run command below:
#chmod u+x .custom-commands.sh
#and put in .bashrc in home folder:
#source ~/.custom-commands.sh

govpn ()  {
	cd /etc/open ; sudo openvpn US\ Chicago.ovpn
}
#to finalize creation, run below:
#chmod u+x .custom-commands.sh
#~/.custom-commands.sh

