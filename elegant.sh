# add the PPA
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
# install tmux
sudo apt install tmux
# install nixnote2
sudo apt-get install nixnote2

#install notepadqq

#install icon
sudo apt-get install ultra-flat-icons

#install theme
sudo apt-get install flatabulous-theme

#install font
FONT_DIR=/usr/share/fonts/truetype/custom/
sudo mkdir -p $FONT_DIR
sudo cp MONACO.TTF $FONT_DIR
sudo cp LiHei.ttf $FONT_DIR
sudo fc-cache -f -v

#install cursor theme
tar -xf Breeze.tgz 
mv Breeze ~/.icons/
gsettings set org.gnome.desktop.interface cursor-theme Breeze
gsettings set org.gnome.desktop.interface cursor-size 24
sudo touch ~/.Xresources 
sudo echo "Xcursor.theme: Breeze" | sudo cat - ~/.Xresources
sudo echo "Xcursor.size: 24" | sudo cat - ~/.Xresources 

#change background
mkdir ~/Pictures
mkdir ~/Pictures/Wallpapers
cp background.jpg ~/Pictures/Wallpapers/
gsettings set org.gnome.desktop.background picture-uri "file://${HOME}/Pictures/Wallpapers/background.jpg"
gsettings set com.canonical.unity-greeter background '${HOME}/Pictures/Wallpapers/background.jpg'

#install Anaconda
echo "Download Anaconda"

#install sougou input method and Chrome
echo "Download Sougou and Chrome install package"
dpkg -i sogou*
dpkg -i chrome*
apt -f install
dpkg -i sogou* 
dpkg -i chrome*
im-config
fcitx-config-gtk3
#install powerline
pip install powerline-status
echo "refer to http://www.tecmint.com/powerline-adds-powerful-statuslines-and-prompts-to-vim-and-bash/"
echo "refer to tmux-powerline"

sudo apt install proxychains
sudo apt install goldendict


#set default view of nautilus ot "list view"
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'


#install zsh
apt-get install zsh
apt-get install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

#rsync alias
echo alias rsync="rsync --info=progress2" >> ~/.zshrc
source ~/.zshrc
