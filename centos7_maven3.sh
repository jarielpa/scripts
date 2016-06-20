#
# Centos Fedora Equip 
#  Maven 3 Equip
# Licence: MIT
# to run: wget --no-check-certificate https://gist.githubusercontent.com/petergdoyle/42a988fbb07ad0e7ca99/raw/e316473c97aee9fd44fc25d8765d1fef6b7148cf/equip_centos7_maven3_64.sh && bash equip_centos7_maven3_64.sh


if [ -d "/usr/maven/default/" ]; then
	echo "There's already an installation of Maven 3 in /usr/maven/default/"
	rm -f centos7_maven3.shx
	echo "Skipping..."
	exit 0
fi
 
curl -O http://www.eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -xvf apache-maven-3.3.9-bin.tar.gz
sudo mkdir /usr/maven
sudo mv apache-maven-3.3.9 /usr/maven
sudo ln -s /usr/maven/apache-maven-3.3.9 /usr/maven/default

sudo alternatives --install "/usr/bin/mvn" "mvn" "/usr/maven/default/bin/mvn" 99999

sudo chown -R root:root /usr/maven
rm -f apache-maven-3.3.9-bin.tar.gz

mvn -version

