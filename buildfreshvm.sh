BuildFreshVM.sh
#######################

#Verify and Configure Network
nmcli conn up enp0s8
sed -i s/ONBOOT=no/ONBOOT=yes/ /etc/sysconfig/network-scripts/ifcfg-enp0s8
grep ONBOOT /etc/sysconfig/network-scripts/ifcfg-enp0s8

#Update OS and Install Development Tools
yum update
yum install -y redhat-lsb-core
yum install -y net-tools
yum install -y epel-release
yum install -y kernel-headers
yum install -y kernel-devel
yum install -y bash-completion
yum groupinstall -y "Development Tools"
#Install X
yum groupinstall -y "X Window System"
#update packages and reboot for guest additions
yum update
reboot








