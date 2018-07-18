#!/bin/bash

if [ "$1" != "" ]; then
    port=$1
else
    port="8080"
fi
SCRIPT="echo \"Connected to the remote server.....\";echo \"Installing system updates.....\";sudo yum update -y;echo \"Installing tomcat....\";sudo yum install tomcat -y;
echo \"Making a new directory for the application....\";sudo mkdir /usr/share/tomcat/webapps/new-app;echo \"Making the index file....\";sudo touch /usr/share/tomcat/webapps/new-app/index.html;echo 'This is a test application' | sudo tee --append /usr/share/tomcat/webapps/new-app/index.html;echo \"Changing the default port no....\";sudo sed -i \"s/port=\"8080\"/port=\"$port\"/g\"  /usr/share/tomcat/conf/server.xml;echo \"Starting tomcat server....\";sudo service tomcat start"
echo "Please enter the address of the host:"
read HOST
echo "Please enter the name of the private key file(with path and extension):"
read PEM
echo "Connecting to client"
ssh -i $PEM ec2-user@$HOST "${SCRIPT}"



