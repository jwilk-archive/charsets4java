all: character-sets

character-sets:
	wget -O $(@) https://web.archive.org/web/20060629014935/http://www.iana.org/assignments/character-sets

# vim:ts=4 
