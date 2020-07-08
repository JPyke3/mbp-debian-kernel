# mbp-debian-kernel

Build scripts for the Debian Kernel with patches for the <=2018 MacBook Pro and T2 Equipped MacBook Air Devices.

## Disclaimer

This is very scuffed and very much in development, I threw all of this together whilst playing around for like a day. 

## Building
You need a Debian machine running buster in order to run this script

1. Add the buster-backports to `/etc/apt/sources.list`
```
echo 'deb http://deb.debian.org/debian buster-backports main' >> /etc/apt/sources.list
```
2. Run `build.sh` as root
```
sudo ./build.sh
```

## Installing

Install the `kernel` `kernel-headers` and `linux-libc` deb packages using dpkg.

## Notes
 * Precompiled Binaries can be found in the releases section
 * There is no ISO with these installed (yet?)
