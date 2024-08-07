# Network UPS Tools (NUT)

This will explain how to configure a linux machine to connect to Synology's Network UPS Server

## 1. Install Stuff

```sh
sudo apt install nut nut-client
```

## 2. Configure nut

Edit `/etc/nut/nut.conf` and set the mode

```conf
MODE=netclient
```

Edit `/etc/nut/upsmon.conf` and configuring monitoring

```conf
MONITOR ups@SYNOLOGY-IP 1 monuser secret slave
```

`SYNOLOGY-IP` is the IP/Hostname of your Synology NAS
