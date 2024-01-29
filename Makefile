all:
	@echo Nothing to do. Run "make install" to install to bin directory.

install: FindUsbTty.sh
	install -T FindUsbTty.sh /usr/local/bin/FindUsbTty
