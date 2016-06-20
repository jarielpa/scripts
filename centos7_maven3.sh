#
# Centos
#  Maven 
# Licence: MIT

if [ -d "/usr/maven/default/" ]; then
	echo "There's already an installation of Maven 3 in /usr/maven/default/"
	rm -f centos7_maven3.sh
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

