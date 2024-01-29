# FindUsbTty

A simple utility to find a TTY assocated with a USB device, given by its VID and PID.

### Usage
```
FindUsbTty VID PID
VID & PID specify the vendor and product ID of the desired USB device, given in hex.
e.g: $ echo -ne 'test\0' > `FindUsbTty baad f00d` 
```


### Installation
Run `sudo make install` to install to `/usr/local/bin`.
