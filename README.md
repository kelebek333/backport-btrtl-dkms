# backport-btrtl-dkms
Backports for btrtl bluetooth driver from kernel source

## How to Install

`sudo apt-get install build-essential git dkms linux-headers-$(uname -r)`

`git clone https://github.com/kelebek333/backport-btrtl-dkms`

`sudo dkms add ./backport-btrtl-dkms`

`sudo dkms build btrtl/0.1.1`

`sudo dkms install btrtl/0.1.1`

Notes:Reboot your PC after installation and you must disable secueboot from BIOS/EFI settings.

## How to Remove

`sudo dkms remove btrtl/0.1.1 --all`
