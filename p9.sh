#!/bin/bash

if [ "$1" != "" ]; then
    port=$1
else
    port="8080"
fi

echo "Installing updates"
sudo yum update -y
echo "Installing tomcat"
sudo yum install tomcat -y
echo "make a new directory"
sudo mkdir /usr/share/tomcat/webapps/new-app
echo "make the index file"
echo "This is my-app" > /usr/share/tomcat/webapps/new-app/index.html
echo "Change the port no"
sudo sed -i "s/Connector port=\"8080\"/Connector port=\"$port\"/g"  /usr/share/$
echo "Starting tomcat server"
sudo service tomcat start


