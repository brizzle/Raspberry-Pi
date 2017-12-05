# Raspberry-Pi


## Downloads

[Raspbian Download](https://www.raspberrypi.org/downloads/raspbian/)

[Windows 10 IoT Core Download](https://developer.microsoft.com/en-us/windows/iot/getstarted)

## Setup


### 1. Installing Raspbian ###

  ```bash
  $ diskutil list
  ```

  * Identify the disk (not partition) of yoor SD card e.g. `disk4`(not `disk4s1`)
  * Unmount your SD card by using the disk identifier to prepare copying data to it:

  ```bash
  $ diskutil unmountDisk /dev/disk<disk# from diskutil>
  ```

  e.g. `diskutil unmount /dev/disk4`

  * Copy the data to your SD card:

  ```bash
  $ sudo dd bs=1m if=image.img of=/dev/rdisk<disk# from diskutil>
  ```

  e.g. `$ sudo bs=1m if=2016-02-09-raspbian-jessie.img of=/dev/rdisk4`
  
  ---------------

### 2. Obtaining the IP Address ###

If the IP is known then from the terminal enter:

```bash
$ ssh 192.168.1.5 -l pi
```

Else then you will need to physically go to the terminal on the Raspberry Pi to get the IP Address. From the terminal enter:

```bash
$ sudo ifconfig
```

Look for "inet addr".

### 3. Setting up Tight VNC Server ###

If tight vnc server has not been installed onto the Raspberry Pi, from the terminal enter:

```bash
$ sudo apt-get install tightvncserver
```

Else, the from the terminal enter:

```bash
$ sudo vncserver :1
```
