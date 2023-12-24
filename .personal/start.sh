#!bin/bash
#initial setup to my personal SO - Debian baseated

sudo apt-get update

sudo apt-get upgrade

sudo install snapd

sudo snap install bitwarden

wget https://www.google.com/intl/pt-BR/chrome/next-steps.html?statcb=0&installdataindex=empty&defaultbrowser=0#

sudo snap install spotify

cd /home/djalma/Downloads sudo dpkg -i * 

cd /home/djalma

clear

sleep 120 

echo "Toda sua parte padrão foi finalizada, agora iremos para a parte de desenvolvimento"

sudo apt remove neovim --purge

sudo apt autoremove autoclean clean

sudo apt update

sudo apt install git build-essential cmake git pkg-config libtool g++ libunibilium4 libunibilium-dev \
ninja-build gettext libtool libtool-bin autoconf automake unzip curl doxygen lua-term lua-term-dev luarocks

git clone https://github.com/neovim/neovim

cd neovim

make CMAKE_BUILD_TYPE=RelWithDebInfo

sudo make install

LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/AurulentSansMono.zip

wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-8.0




