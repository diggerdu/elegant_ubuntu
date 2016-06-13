#install notepadqq
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install notepadqq

#install tuning tool
sudo apt-get install unity-tweak-tool

#install icon
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons

#install theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme

#install font
FONT_DIR=/usr/share/fonts/truetype/custom/
sudo mkdir -p $FONT_DIR
sudo mv MONACO.TTF $FONT_DIR
sudo mv LiHei.ttf $FONT_DIR
sudo fc-cache -f -v

#install cursor theme
tar -xf Breeze.tgz 
mv Breeze ~/.icons/
gsettings set org.gnome.desktop.interface cursor-theme Breeze
gsettings set org.gnome.desktop.interface cursor-size 24
touch ~/.Xresources 
echo "Xcursor.theme: Breeze" | cat >> ~/.Xresources
echo "Xcursor.size: 24" | cat >> ~/.Xresources 

#chang background
mkdir ~/Pictures
mkdir ~/Pictures/Wallpapers
cp background.jpg ~/Pictures/Wallpapers/
gsettings set org.gnome.desktop.background picture-uri "file://${HOME}/Pictures/Wallpapers/background.jpg"
gsettings set com.canonical.unity-greeter background '${HOME}/Pictures/Wallpapers/background.jpg'

#install powerline
pip install powerline-status
echo "refer to http://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/"
