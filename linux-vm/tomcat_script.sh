
sudo add-apt-repository -y ppa:openjdk-r/ppa;
sudo apt-get update;
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y openjdk-8-jre;

cd /tmp/;
sudo wget https://archive.apache.org/dist/tomcat/tomcat-8/v8.5.32/bin/apache-tomcat-8.5.32.tar.gz;
sudo tar xvzf apache-tomcat-8.5.32.tar.gz;
sudo mkdir /opt/tomcat;
sudo cp -Rv apache-tomcat-8.5.32/* /opt/tomcat/;
sudo chmod 777 -R /opt/tomcat/;

sudo echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/" >> /etc/environment;
/opt/tomcat/bin/startup.sh;
