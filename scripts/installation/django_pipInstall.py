!#/bin/bash

echo "=============================================================================";
echo "===	This script will install 'DJANGO' with the 'PIP'-Command.	===";
echo "=============================================================================";

#	PART-1:	Installation of python3-pip
sudo apt-get install python3-pip;

#	PART-2:
# Create SYMLINK for 'pip3'-Binary-File (i.e. makes for easier use of 'pip')
sudo which pip3;
sudo ln -s /usr/bin/pip3 /usr/bin/pip;

sudo apt autoremove -y;

#	PART-3:	Use of pip to install DJANGO-Python-Package
sudo pip install django==1.11;
#	PART-3.ii: PIP upgrade
sudo -H pip install --upgrade pip;
#	PART-3.iii: Reconfiguration of locale-settings in the event of Local-Settings-Error
#export 
#export 
#export 
#locale-gen en_US.UTF-8
#dpkg-reconfigure locales
