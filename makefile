# See LICENSE file for copyright and license details.
.POSIX:

PREFIX = /usr/local
HOMEPREFIX = $(HOME)/.local
BINDIR = $(PREFIX)/bin
APPDIR = $(HOMEPREFIX)/share/applications

uninstall:
	rm -f $(BINDIR)/srl

install:
	cp -f srl $(BINDIR)/srl
	mkdir -p $(APPDIR)
	cp -f srl.desktop $(APPDIR)/
	xdg-mime default srl.desktop x-scheme-handler/roblox-player

.PHONY: install uninstall
