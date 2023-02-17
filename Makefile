.PHONY: all
all: charsets.java

character-sets:
	wget -O $(@) https://web.archive.org/web/20060629014935/http://www.iana.org/assignments/character-sets

charsets.java: character-sets gen-charsets
	./gen-charsets < $(<) > $(@)

# vim:ts=4 sts=4 sw=4 noet
