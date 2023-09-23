# updatepkg Installer
# License: 3-clause BSD
# Copyright (c) 2023 Radio New Japan Broadcasting Club

PREFIX ?= /usr/local
BIN_DIR=$(DESTDIR)$(PREFIX)/bin

all:
	printf "Run 'make install' to install updatepkg.\n"

install:
	install -vDm 755 updatepkg -t "$(BIN_DIR)/"

uninstall:
	rm -rf "$(BIN_DIR)/updatepkg"

.PHONY: check install uninstall
