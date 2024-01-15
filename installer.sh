#!/bin/bash


sudo apt-get update -y && sudo apt-get upgrade -y


sudo apt-get install -y wget curl git thunar
sudo apt-get install -y arandr flameshot arc-theme feh i3blocks i3status i3 i3-wm lxappearance python3-pip rofi unclutter cargo compton papirus-icon-theme imagemagick
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson
sudo apt-get install -y libxcb-render-util0-dev libxcb-shape0-dev libxcb-xfixes0-dev 
sudo apt install libstartup-notification0-dev -y
sudo apt-get -y install libxcb-xkb-dev 
sudo apt-get install libsystemd-journal-dev libtiff5 -y
sudo apt install libxcb-xinerama0 -y
sudo apt install libxcb-xinerama0-dev -y
sudo apt install libxcb-x* 
sudo apt-get -y install libxcb-randr0
sudo apt-get -y install libxcb-randr0-dev
sudo apt-get -y install libxcb-*
sudo apt-get -y install librust-xkbcommon-dev
sudo apt-get -y install librust-xkbcommon-sys-dev
sudo apt-get -y install yajl-tools
sudo apt-get -y install ruby-ffi-yajl
sudo apt-get -y install ruby-yajl
sudo apt-get update -y
sudo apt-get -y install libpcre*
sudo apt-get -y install libpcre2-8-0
sudo apt-get -y install libpcre2-dev
sudo apt-get -y install cairo-dock-dev
sudo apt-get -y install python3-gi-cairo
sudo apt install libcairo2-dev
sudo apt-get -y install librust-pangocairo-dev
pip3 install pywal

mkdir -p ~/.local/share/fonts/

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Iosevka.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/RobotoMono.zip

unzip Iosevka.zip -d ~/.local/share/fonts/
unzip RobotoMono.zip -d ~/.local/share/fonts/

fc-cache -fv

wget https://github.com/barnumbirr/alacritty-debian/releases/download/v0.10.0-rc4-1/alacritty_0.10.0-rc4-1_amd64_bullseye.deb
sudo dpkg -i alacritty_0.10.0-rc4-1_amd64_bullseye.deb
sudo apt install -f

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps && mkdir -p build && cd build && meson ..
ninja
sudo ninja install

cd ../..

mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty

cp .config/i3/config ~/.config/i3/config
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/i3/i3blocks.conf ~/.config/i3/i3blocks.conf
cp .config/compton/compton.conf ~/.config/compton/compton.conf
cp .config/rofi/config ~/.config/rofi/config
cp .fehbg ~/.fehbg
cp .config/i3/clipboard_fix.sh ~/.config/i3/clipboard_fix.sh
cp -r .wallpaper ~/.wallpaper 


echo "Finished! Now just find some Background wallpaper and set them using the command : feh --bg-scale background.jpg"
echo "Reboot your machine and on login Select i3"
echo "When your system is up. open the Terminal using Win+Enter and then run lxappearance and Select arc-dark"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"