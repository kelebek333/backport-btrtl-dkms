CURRENT = $(shell uname -r)
KDIR = /lib/modules/$(CURRENT)/build
PWD = $(shell pwd)

obj-m := btrtl.o

default:
	make -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean

install: default
	make -C $(KDIR) M=$(PWD) INSTALL_MOD_DIR=updates modules_install
	depmod -ae
