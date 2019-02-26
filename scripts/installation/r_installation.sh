!#/bin/bash

echo "=============================================================================================";
echo "===	This script will install all necessary packages for R, RStudio, RStudio-Server.	===";
echo "=============================================================================================";
#########################################################
# Adds the external repository maintained by CRAN	#
#########################################################
#	Adds trusted key in each server’s database
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9

#	Adds the repository
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'

#	Update in order to include package manifests from the new repository
sudo apt-get update

#########################
# R installation	#
#########################
sudo apt-get install r-base
sudo apt-get install r-base-dev

#################################
# RStudio Installation		#
#################################
sudo apt-get install gdebi-core
wget https://download1.rstudio.org/rstudio-0.99.896-amd64.deb
sudo gdebi -n rstudio-0.99.896-amd64.deb
rm rstudio-0.99.896-amd64.deb

#########################################
# RStudio-Server Installation		#
#########################################
sudo apt-get install gdebi-core
wget https://download2.rstudio.org/rstudio-server-1.1.456-amd64.deb
sudo gdebi rstudio-server-1.1.456-amd64.deb

#	Confirm R console works
sudo -i R

######################################################################################################################################################################
######################################################################################################################################################################
######################################################################################################################################################################

### Adds R-CRAN Repository to /etc/apt/sources.list
#deb https://cloud.r-project.org/bin/linux/ubuntu xenial-cran35/
### activate the backports repositories
#deb https://<my.favorite.ubuntu.mirror>/ bionic-backports main restricted universe
