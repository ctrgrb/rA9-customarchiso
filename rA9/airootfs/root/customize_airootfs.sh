#!/usr/bin/env bash
#
# SPDX-License-Identifier: GPL-3.0-or-later

set -e -u

# Warning: customize_airootfs.sh is deprecated! Support for it will be removed in a future archiso version.

sed -i 's/#\(en_US\.UTF-8\)/\1/' /etc/locale.gen
locale-gen

sed -i "s/#Server/Server/g" /etc/pacman.d/mirrorlist
pacman -Sy
wget https://download.virtualbox.org/virtualbox/6.1.34/Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack
echo 'y' | vboxmanage extpack install /Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack
rm /Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack
chmod +x /opt/airgeddon/airgeddon.sh
echo airgeddon set up done
cd /opt/archtorify/
make
cd
chmod +x /opt/archtorify/archtorify.sh
echo archtorrify set up done
systemctl enable NetworkManager.service
systemctl enable nordvpnd.service
#rm /etc/i3/config
#mv /root/config /etc/i3/config
echo Set root password
passwd
useradd markus
(echo 'toruser'; echo 'toruser') | passwd markus
chown -R markus:markus /home/markus
mkhomedir_helper markus
nano /usr/share/applications/brave-browser.desktop

