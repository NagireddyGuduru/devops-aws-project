-------------
Nexus Setup
-------------
Sudo su
1. yum update -y
2. yum install java-1.8.0-openjdk.x86_64 -y
3. mkdir /app && cd /app
4. wget https://sonatype-download.global.ssl.fastly.net/nexus/3/nexus-3.0.2-02-unix.tar.gz
5. tar -xvf nexus-3.0.2-02-unix.tar.gz
6. mv nexus-3.0.2-02 nexus
7. adduser nexus
8. chown -R nexus:nexus /app/nexus
9. Open /app/nexus/bin/nexus.rc file, uncomment run_as_user parameter and set it as following.
   vi /app/nexus/bin/nexus.rc
   run_as_user="nexus"

10. ln -s /app/nexus/bin/nexus /etc/init.d/nexus
    ls -ltr /etc/init.d/nexus
11. chkconfig --add nexus
12. chkconfig --levels 345 nexus on
13. service nexus start
14. http://ip-address:8081/
15. User Name: admin
16. Password: admin123
