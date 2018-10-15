***********************************
SonarQube Installation on Ec2 Linux
************************************

step 1:
sudo su
cd /opt/

step 2:

wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.3.zip

step 3:
unzip sonarqube-7.3.zip

step 4:

chown -R ec2-user:ec2-user sonarqube-7.3/

### step 5:
Create a file /etc/init.d/sonar and copy the following content on to the file.

vi /etc/init.d/sonar

#!/bin/sh

/usr/bin/sonar $*

:wq!

### step 6:

ln -s /opt/sonarqube-7.3/bin/linux-x86-64/sonar.sh /usr/bin/sonar

verify link created or not
ls -ltr /usr/bin/sonar

### step 7:

chmod 755 /etc/init.d/sonar


###  step 8:
reboot

### step 9:
sudo service sonar status
sudo service sonar start
sudo service sonar stop
sudo service sonar restart 
