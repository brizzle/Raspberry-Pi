# Raspberry-Pi


## Downloads

[Raspbian Download](https://www.raspberrypi.org/downloads/raspbian/)

[Windows 10 IoT Core Download](https://developer.microsoft.com/en-us/windows/iot/getstarted)

## 1. Installing Raspbian ##

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
$ sudo dd bs=1m if=image.img of=/dev/rdisk<disk# from diskutil>
```

i.e. `$ sudo bs=1m if=2016-02-09-raspbian-jessie.img of=/dev/rdisk4`

* The SSH server will need to be enabled. To do so, enter in the terminal:

```bash
sudo rasp-config
```

Select `Interfacing options`, then navigate to `ssh`, press Enter and select `Enable or disable ssh server`.

---------------

## 2. Obtaining the IP Address ##

If the IP is known then from the terminal enter:

```bash
$ ssh 192.168.1.5 -l pi
```

OR

```bash
$ ssh pi@<hostname>
```

By default, the default hostname is 'raspberrypi' unless it has been changed

Else then you will need to physically go to the terminal on the Raspberry Pi to get the IP Address. From the terminal enter:

```bash
$ sudo ifconfig
```

Look for "inet addr".

```bash
$ ssh pi@<IP>
```

Password is `raspberry`

---------------

## 3. Setting up Tight VNC Server ##

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

## SSH into Raspberry Pi

```bash
ssh pi@<hostname>
```

i.e `ssh pi@raspberrypi`

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

## Installing Yarn

Curl is needed to install Yarn. Run the command below to see if Curl is installed.

```bash
sudo apt install curl
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add
sudo sh -c 'echo "deb https://dl.yarnpkg.com/debian/ stable main" >> /etc/apt/sources.list.d/yarn.list'
sudo apt update
sudo apt install yarn
yarn --version
```

---------------

## Install Git

```bash
sudo apt install git
git --version
```

---------------

## Get IP Address

```bash
hostname -I
```

---------------

## Rename Hostname

Step 1 - change hostname in hostname file

```bash
sudo bash -c "echo piserver01 > ../../etc/hostname"
```

Step 2 - change hostname in hosts file

```bash
sudo nano ../../etc/hosts
```

---------------

## 1. Copy image from SD card to computer ##

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
