echo "["`date +"%Y-%m-%d %T"`"]" "Starting script..."

# echo "Please enter in user password:"
# read -s PASSWORD
# export PASSWORD

# Create logging directory
mkdir -p -- "logs"

# Creating logging file
LOGGING_PATH=/logs
CURRENT_DATE=`date +"%Y-%m-%d"`
FILE_NAME=$CURRENT_DATE".log"
export FILE_PATH="."$LOGGING_PATH"/"$FILE_NAME

echo >> $FILE_PATH

echo "["`date +"%Y-%m-%d %T"`"] Refreshing the local package manager..."
echo "["`date +"%Y-%m-%d %T"`"] Refreshing the local package manager..." >> $FILE_PATH
sudo apt update

echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Curl..."
echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Curl..." >> $FILE_PATH
sudo apt install curl

echo "["`date +"%Y-%m-%d %T"`"] Curl complete"
echo "["`date +"%Y-%m-%d %T"`"] Curl complete" >> $FILE_PATH

# Install Node.js
sh ./run-nodejs.sh

# Install NPM
sh ./run-npm.sh

# Install Yarn
sh ./run-yarn.sh

# Install Git
sh ./run-git.sh

echo "["`date +"%Y-%m-%d %T"`"] Initial setup complete"
echo "["`date +"%Y-%m-%d %T"`"] Initial setup complete" >> $FILE_PATH