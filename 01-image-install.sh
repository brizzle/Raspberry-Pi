echo "["`date +"%Y-%m-%d %T"`"] Copying image to SD card..."

echo "Please enter in the disk name:"
read DISK_NAME

IMAGE_NAME="2019-09-26-raspbian-buster.img"

# echo "Please enter in the image name: "
# read IMAGE_NAME

# This makes it available to other script files
# export DISK_NAME

echo "Disk path: /dev/"$DISK_NAME
echo "Image name:"$IMAGE_NAME

# diskutil list

# Identify the disk (not partition) of your SD card i.e. `disk4`(not `disk4s1`)
# Unmount your SD card by using the disk identifier to prepare copying data to it:
diskutil unmountDisk /dev/$DISK_NAME

# Copy image to SD card
# i.e. `$ sudo dd bs=1m if=2019-09-26-raspbian-buster.img of=/dev/rdisk4`
sudo dd bs=1m if=$IMAGE_NAME of=/dev/$DISK_NAME

echo "["`date +"%Y-%m-%d %T"`"] Copying complete"