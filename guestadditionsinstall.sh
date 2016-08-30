#Guest Additions Install
#Installing Guest Additions from Terminal
#Mount the device and execute command
mount /dev/cdrom  /mnt
cd /mnt
./VBoxLinuxAdditions.run
cd
umount /mnt
eject /dev/sr0
reboot
