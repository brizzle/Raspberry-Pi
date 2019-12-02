echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Node.js..."
echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Node.js..." >> $FILE_PATH

# sudo apt-get install curl software-properties-common
curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
# sudo apt-get install nodejs
sudo apt install nodejs
nodejs --version

echo "["`date +"%Y-%m-%d %T"`"] Node.js complete"
echo "["`date +"%Y-%m-%d %T"`"] Node.js complete" >> $FILE_PATH
echo "Current Node.js version" >> $FILE_PATH
nodejs --version >> $FILE_PATH