apt-get update
apt-get update -y

apt-get update install apache2 -y
apt-get update install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
