sudo apt-get update
sudo apt-get install openjdk-8-jdk
java -version

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list' 

sudo apt-get update
sudo apt-get install jenkins
sudo service jenkins status

sudo systemctl start jenkins
sudo systemctl status jenkins
