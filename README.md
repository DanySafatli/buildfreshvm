## Synopsis  

This project is a reference for myself to quickly create a fresh Oracle VM with just the right packages to use for testing and learning purposes. (specifically for my LFCS courses.  
This project utilizes the CentOS 7 Minimal distribution including developer packages.  

## Motivation  

After creating countless VM's in Oracle VirtualBox manually, I decided it was time to save myself some cycles and work more efficiently. This is my process and the .sh file I used to execute after the preliminary configurations.  

## Installation  

Install latest version of Oracle VirtualBox  

## Usage Instructions  

Follow the instructions below after downloading and installing latest version of Oracle VIrtualBox.  
Create a new VM  
Configurations:  
Settings  -> Network  
Add two network cards  
NatNetwork  
Host only  
network card  
Add CentOS 7 Minimal distributed model in storage  
Install CentOS 7  
Reboot  
Login and bring up ebp0s8 interface  
''''nmcli conn up enp0s8
''''

##Requirements  

Machine with at least 8 GB ram and at least 10 GB memory for one instance  

## License  

This was done entirely on open source software. No licenses were necessary to create a fresh instance.  
