mv usr/share/X11/xorg.conf.d/*-libinput.conf usr/share/X11/xorg.conf.d/90-libinput.conf
mkdir -p etc/X11/xorg.conf.d/
cp usr/share/X11/xorg.conf.d/90-libinput.conf etc/X11/xorg.conf.d/
