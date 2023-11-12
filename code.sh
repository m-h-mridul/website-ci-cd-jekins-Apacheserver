
echo " install jenkins ----"


sudo apt update

sudo apt install apache2 -y 

sudo systemctl start apache2

sudo systemctl enable apache2 

sudo systemctl start apache2

sudo apt install openjdk-11-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list >/dev/null

sudo apt-get update
sudo apt-get install jenkins -y

sudo systemctl start jenkins

sudo systemctl enable jenkins

sudo systemctl restart jenkins

sudo cat /var/lib/jenkins/secrets/initialAdminPassword


sudo usermod -aG  jenkins $USER

sudo chown jenkins:www-data html

sudo usermod -aG www-data jenkins


