PREFIX = /usr/local

all: install

.PHONY: install
install: 
	mkdir -p $(PREFIX)/lib/write-my-bash
	ln -sf lib/* $(PREFIX)/lib/write-my-bash/

.PHONY: uninstall
uninstall: 
	rm -f $(PREFIX)/lib/write-my-bash
