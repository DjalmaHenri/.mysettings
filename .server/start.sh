#!bin/bash
#MySetupServer

echo "Plugue o HD com os arquivos para copiar para o servidor"

sleep 120

sudo apt-get update

cd /home/djalma

curl -s https://install.zerotier.com | sudo bash

sudo zerotier-cli join e3918db4830831a1

wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.7.14.0/emby-server-deb_4.7.14.0_amd64.deb

sudo dpkg -i *

sudo apt-get update

cd /.homeserver

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable

sudo apt-get install qbittorrent-nox

sudo adduser qbtuser

echo -e '[Unit]\n Description=qBittorrent Daemon Service\n After=network.target\n \n [Service]\n Type=forking\n User=qbtuser\n ExecStart=/usr/bin/qbittorrent-nox -d\n \n [Install]\n WantedBy=multi-user.target'| sudo tee /etc/systemd/system/qbittorrent-nox.service

sudo systemctl start qbittorrent-nox

sudo systemctl enable qbittorrent-nox

sudo apt update

sudo apt install samba

sudo rm -rf /etc/samba/smb.conf

sudo rsync -rvP smb.conf /etc/samba/

sudo service smbd restart

sudo smbpasswd -a djalma

sudo mount /dev/sdb1 /mnt

rsync -rvP /mnt/data media /home/djalma

chmod 750 /home/djalma/data

sudo umount /dev/sdb1

chmod 777 /home/djalma/media

echo "Servidor configurado! :)"


