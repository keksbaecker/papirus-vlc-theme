INSTALLDIR=$(DESTDIR)/usr/share/vlc/skins2
RM = rm -rf

all:

install: local

clear:
	$(RM) $(INSTALLDIR)/Papirus{,-Dark}.vlt
local:
	find Papirus{,-Dark}.vlt -type f -exec install -Dm644 '{}' "$(INSTALLDIR)/{}" \;

uninstall: clear
