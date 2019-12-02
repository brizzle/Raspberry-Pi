echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing NPM..."
echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing NPM..." >> $FILE_PATH

# | => transfer of standard output to some other destination
# echo "$PASSWORD" | sudo -S npm install npm@latest -g
# sudo apt install npm
sudo npm install -g npm@latest
npm --version

echo "["`date +"%Y-%m-%d %T"`"] NPM complete"
echo "["`date +"%Y-%m-%d %T"`"] NPM complete" >> $FILE_PATH
echo "Current NPM version" >> $FILE_PATH
npm --version >> $FILE_PATH