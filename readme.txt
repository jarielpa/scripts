wget https://raw.githubusercontent.com/jarielpa/scripts/master/centos7_maven3.sh
wget https://raw.githubusercontent.com/jarielpa/scripts/master/apiman.sh

wget https://raw.githubusercontent.com/jarielpa/scripts/master/centos7_jenkins.sh

wget https://raw.githubusercontent.com/jarielpa/scripts/master/oracle-jdk8-centos7.sh

nexus needs oracle jdk 

# cd /opt/jdk1.8.0_91/
# alternatives --install /usr/bin/java java /opt/jdk1.8.0_91/bin/java 2
# alternatives --config java


setup javac and jar commands path using alternatives

# alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_91/bin/jar 2
# alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_91/bin/javac 2
# alternatives --set jar /opt/jdk1.8.0_91/bin/jar
# alternatives --set javac /opt/jdk1.8.0_91/bin/javac

wget https://raw.githubusercontent.com/jarielpa/scripts/master/centos7_nexus.sh
