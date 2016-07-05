PREFIX = /usr/local

all: install

.PHONY: install
install: 
	ln -sf src/* $(PREFIX)/bin/

.PHONY: uninstall
uninstall: 
	rm -f $(PREFIX)/bim/write-my-bash
