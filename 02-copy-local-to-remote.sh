echo "["`date +"%Y-%m-%d %T"`"] Process starting..."

echo "Please enter in username:"
read USERNAME

echo "Please enter in host name:"
read HOST_NAME

# echo "Please enter in user password:"
# read -s PASSWORD
# export PASSWORD

DIRECTORY="./Documents/setup/"

#Copy all files in folder from local to remote
#scp * pi@piserver02:./Documents/setup/

echo "["`date +"%Y-%m-%d %T"`"] Creating directory: "$DIRECTORY"..."
# -p keeps the console from complaining if the directory already exists
# if the directory already exists, 'mkdir' will not overwrite it
ssh $USERNAME"@"$HOST_NAME "mkdir -p "$DIRECTORY
echo "["`date +"%Y-%m-%d %T"`"] Directory: "$DIRECTORY" created"

#Copy files from local to remote
echo "["`date +"%Y-%m-%d %T"`"] Copying files to "$DIRECTORY"..."
scp 03-main.sh run-nodejs.sh run-npm.sh run-yarn.sh run-git.sh $USERNAME"@"$HOST_NAME:$DIRECTORY

echo "["`date +"%Y-%m-%d %T"`"] Files copied to "$DIRECTORY" complete"
echo "["`date +"%Y-%m-%d %T"`"] Process complete"