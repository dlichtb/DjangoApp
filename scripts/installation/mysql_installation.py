!#/bin/bash

echo "=====================================================";
echo "===	This script will install 'MYSQL'.	            ===";
echo "=====================================================";

#	PART-1:	System UPDATE
sudo apt-get update;
#	PART-2: Install MYSQL-Server service
sudo apt-get install mysql-server;
#	PART-3" Execute 'mysql_secure_installation
mysql_secure_installation;
sudo apt-get install python3-pip;
#	PART-4:	Test SYSTEM-CTRL-Access Activity for MYSQL-Service: [IN/Active]
sudo systemctl status mysql.service
