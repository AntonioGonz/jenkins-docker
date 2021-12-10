##### user: root

adduser jenkins
usermod -aG sudo jenkins
usermod -aG ubuntu jenkins
sudo - jenkins
su - jenkins

##### user: jenkins

sudo ls -l /root 
vim install.sh
sudo bash install.sh
vim docker-compose.yml
mkdir dockerAgent 
vim dockerAgent/Dockerfile
# Add the line "vm.max_map_count = 262144" inside the file "/etc/sysctl.conf"
sudo vim /etc/sysctl.conf
sudo sysctl -p
# Launch Jenkins and Sonar
docker-compose up -d
# Getting jenkins pass
sudo cat /var/jenkins_home/secrets/initialAdminPassword