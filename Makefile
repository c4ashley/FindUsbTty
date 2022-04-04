all:
	@echo Nothing to do. Run "make install" to install to bin directory.

install: FindUsbTty.sh
	cp FindUsbTty.sh /usr/local/bin/
