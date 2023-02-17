# Copyright © 2006, 2023 Jakub Wilk <jwilk@jwilk.net>
# SPDX-License-Identifier: MIT

.PHONY: all
all: charsets.java

character-sets:
	wget -O $(@) https://web.archive.org/web/20060629014935/http://www.iana.org/assignments/character-sets

charsets.java: character-sets gen-charsets
	./gen-charsets < $(<) > $(@)

.PHONY: clean
clean:
	rm -f character-sets charsets.java

# vim:ts=4 sts=4 sw=4 noet
