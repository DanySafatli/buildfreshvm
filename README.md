
## Synopsis

At the top of the file there should be a short introduction and/ or overview that explains **what** the project is. This description should match descriptions added for package managers (Gemspec, package.json, etc.)

## Code Example

Show what the library does as concisely as possible, developers should be able to figure out **how** your project solves their problem by looking at the code example. Make sure the API you are showing off is obvious, and that your code is short and concise.

## Motivation

A short description of the motivation behind the creation and maintenance of the project. This should explain **why** the project exists.

## Installation

Provide code examples and explanations of how to get the project.

## API Reference

Depending on the size of the project, if it is small and simple enough the reference docs can be added to the README. For medium size to larger projects it is important to at least provide a link to where the API reference docs live.

## Tests

Describe and show how to run the tests with code examples.

## Contributors

Let people know how they can dive into the project, include important links to things like issue trackers, irc, twitter accounts if applicable.

## License

A short snippet describing the license (MIT, Apache, etc.)








#Requirements
Create a new VM
Configurations:
  Settings  -> Network
    Add two network cards
      NatNetwork
      Host only network card
  
    




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


#Installing Guest Additions from Terminal
#Mount the device and execute command
# mount /dev/cdrom  /mnt
# cd /mnt
# ./VBoxLinuxAdditions.run
# reboot
