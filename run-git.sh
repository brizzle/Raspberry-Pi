echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Git..."
echo "["`date +"%Y-%m-%d %T"`"] Downloading and installing Git..." >> $FILE_PATH

sudo apt install git
git --version

echo "["`date +"%Y-%m-%d %T"`"] Git complete"
echo "["`date +"%Y-%m-%d %T"`"] Git complete" >> $FILE_PATH
echo "Current Git version" >> $FILE_PATH
git --version >> $FILE_PATH