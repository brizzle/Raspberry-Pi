# Raspberry-Pi


## Downloads

[Raspbian Download](https://www.raspberrypi.org/downloads/raspbian/)

[Windows 10 IoT Core Download](https://developer.microsoft.com/en-us/windows/iot/getstarted)

## Setup

Step 2. If the IP is known then type into the terminal

```bash
$ ssh 192.168.1.5 -l pi
```

else then you will need to physically go to the terminal on the Raspberry Pi to get the IP Address. From the command line enter:

```bash
$ sudo ifconfig
```

Look for "inet addr".

Step 3.

If tight vnc server has not been installed onto the Raspberry Pi, from the command line enter:

```bash
$ sudo apt-get install tightvncserver
```

Else, the from the command line enter:

```bash
sudo vncserver :1
```
