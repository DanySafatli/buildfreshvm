yum groupinstall -y "MATE Desktop"
systemctl set-default graphical.target
systemctl isolate graphical.target
reboot
