#
#
# Licence: MIT

if [ -d "~/apiman-1.2.7.Final" ]; then
	echo "There's already an installation of Apiman"
	#rm -f apiman.sh
	echo "Skipping..."
	exit 0
fi

mkdir ~/apiman-1.2.7.Final
cd ~/apiman-1.2.7.Final
curl http://download.jboss.org/wildfly/10.0.0.Final/wildfly-10.0.0.Final.zip -o wildfly-10.0.0.Final.zip
curl http://downloads.jboss.org/apiman/1.2.7.Final/apiman-distro-wildfly10-1.2.7.Final-overlay.zip -o apiman-distro-wildfly10-1.2.7.Final-overlay.zip
unzip wildfly-10.0.0.Final.zip
unzip -o apiman-distro-wildfly10-1.2.7.Final-overlay.zip -d wildfly-10.0.0.Final
cd wildfly-10.0.0.Final
#./bin/standalone.sh -c standalone-apiman.xml




