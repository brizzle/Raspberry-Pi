# Raspberry-Pi


## Downloads

[Raspbian Download](https://www.raspberrypi.org/downloads/raspbian/)

[Windows 10 IoT Core Download](https://developer.microsoft.com/en-us/windows/iot/getstarted)

## 1. Install Raspbian ##

Run script `01-image-install.sh`. Make sure the image is in the same directory as the `01-image-install.sh` file.

```bash
bash 01-image-install.sh
```

## 2. Enable SSH ##

* The SSH server will need to be enabled. To do so, enter in the terminal:

```bash
sudo raspi-config
```

Select `Interfacing options`, then navigate to `ssh`, press Enter and select `Enable or disable ssh server`.

---------------

### SSH into Raspberry Pi

```bash
ssh pi@<hostname>
```

i.e `ssh pi@raspberrypi`

## 3. Rename Hostname

By default, the default hostname is 'raspberrypi' unless it has been changed.

Step 1 - change hostname in hostname file

```bash
sudo bash -c "echo piserver01 > ../../etc/hostname"
```

Step 2 - change hostname in hosts file

```bash
sudo nano ../../etc/hosts
```

## 4. Install Node.js, NPM, Yarn, and Git

Run on local machine, run script `02-copy-local-to-remote.sh`. Make sure the `03-main.sh`, `run-nodejs.sh`, `run-npm.sh`, `run-yarn.sh`, and `run-git.sh` files are in the same directory.

```bash
bash 02-copy-local-to-remote.sh
```

Once the files have been copied to the remote server, ssh in and cd to the `Documents/setup/` directory.

```bash
ssh pi@<hostname>
```

```bash
cd Documents/setup/
bash 03-main.sh
```

A log file will be created and placed in the `./logs/` directory.

## Optional Steps

### Setting up Tight VNC Server

If tight vnc server has not been installed onto the Raspberry Pi, from the terminal enter:

```bash
$ sudo apt-get install tightvncserver
```

Else, the from the terminal enter:

```bash
$ sudo vncserver :1
```

---------------

## Install Remote Desktop ##

```bash
$ sudo apt-get install xrdp
```

---------------

## Usefull Commands

shutdown command

```bash
$ sudo shutdown -h now
```

restart

```bash
$ sudo shutdown -r now
```

---------------

## Install Node.js

```bash
sudo apt install nodejs
```

```bash
wget https://nodejs.org/dist/v10.16.1/node-v10.16.1-linux-armv7l.tar.xz
tar -xJf node-v10.16.1-linux-armv7l.tar.xz
cd node-v10.16.1-linux-armv7l/
sudo cp -R * /usr/local/
```

---------------

## Installing NPM

```bash
sudo npm install npm@latest -g
```

---------------

## Copy image from SD card to computer

```bash
$ diskutil list
```

* Identify the disk (not partition) of yoor SD card i.e. `disk4`(not `disk4s1`)
* Unmount your SD card by using the disk identifier to prepare copying data to it:

```bash
$ diskutil unmountDisk /dev/disk<disk# from diskutil>
```

i.e. `diskutil unmount /dev/disk4`

* Copy the data to your SD card:

```bash
$ sudo dd bs=1m if=/dev/disk<disk_#> of=image.img
```

i.e. `$ sudo bs=1m if=/dev/rdisk4 of=image.img`

---------------
