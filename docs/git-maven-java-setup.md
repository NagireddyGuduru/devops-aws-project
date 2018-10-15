# GitHub account

# AWS CLI Setup:

# Terraform Setup:

# Lamda Setup:


# Ansible Setup:

  ## PasswordLessAuthentication:

# Docker Setup:

#


-------------------
Install Jdk 1.8
-------------------

sudo yum install java-1.8.0-openjdk-devel
sudo alternatives --config java
sudo alternatives --config javac

---------------
Install Git
---------------

yum install git

--------------------
Install maven
--------------------

wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
 
2)sudo sed -i s/\$releasever/6/g /etc/yum.repos.d/epel-apache-maven.repo
 
3) sudo yum install -y apache-maven
 
mvn --version

