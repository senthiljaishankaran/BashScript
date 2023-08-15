#!/bin/bash

### Script to run a Webserver ###

### Variables to be used in the script ###

PACKAGE="wget httpd unzip"
SERVICE="httpd"
#URL="https://www.tooplate.com/zip-templates/2098_health.zip"
FOLDER_PATH="/tmp/webfiles"
#WEB_NAME="2098_health"

### Command line arguments to be used in the script ###

echo "Installing the Dependencies"
echo
sudo yum install $PACKAGE -y > /dev/null
echo
echo "Dependency Installation completed"

echo "Starting the server"
sudo systemctl start $SERVICE
sudo systemctl enable $SERVICE
echo
echo "$SERVICE is Started and Enabled"

echo "Creating the folder structure"
mkdir -p $FOLDER_PATH
cd $FOLDER_PATH
echo
echo "Folder Created successfully"

echo "Downloding the Website Content"
wget $1
echo
echo "Website files downloaded successfully"

echo "Extracting the Artifact"
unzip $2.zip
echo
echo "Webfiles extracted successfully"

echo "Copying the webfiles to the var folder"
sudo cp -r $2/* /var/www/html/
echo
echo "Webfiles copied sucessfully"

echo "Restarting the $SERVICE"
sudo systemctl restart $SERVICE
echo
echo "Service Restarted successfully"

echo "Removing the Temp files"
rm -rf /tmp/webfiles
echo
echo "Removed the temperary webfiles"

echo "Service status"
sudo systemctl status $SERVICE
echo

echo "Webfiles Location"
ls /var/www/html/

