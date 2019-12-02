echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Yarn..."
echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Yarn..." >> $FILE_PATH

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
sudo sh -c 'echo "deb https://dl.yarnpkg.com/debian/ stable main" >> /etc/apt/sources.list.d/yarn.list'
sudo apt update
sudo apt install yarn
yarn --version

echo "["`date +"%Y-%m-%d %T"`"] Yarn complete"
echo "["`date +"%Y-%m-%d %T"`"] Yarn complete" >> $FILE_PATH
echo "Current Yarn version" >> $FILE_PATH
yarn --version >> $FILE_PATH