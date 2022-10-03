sudo apt update -y
sudo apt install --assume-yes wget tasksel
wget https://github.com/finlod39/Ubuntu-RDP/blob/main/chrome-remote-desktop_current_amd64.deb
sudo apt-get install --assume-yes ./chrome-remote-desktop_current_amd64.deb
sudo tasksel install ubuntu-desktop
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/gnome-session" > /etc/chrome-remote-desktop-session'
sudo systemctl status chrome-remote-desktop@USER
