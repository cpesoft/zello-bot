#! /bin/sh

cd ~
Xvfb :99 -ac -listen tcp -screen 0 800x600x24 &
sleep 3

# Fluxbox
/usr/bin/fluxbox -display :99 -screen 0 &

# use other window managers instead of fluxbox if you like
# (you only have to install them first)

# dwm
#DISPLAY=:99 /usr/bin/dwm &
# IceWM
#/usr/bin/icewm --display :99 &
# ratpoison
#/usr/bin/ratpoison --display :99 --screen 0 &
#OpenBox
#DISPLAY=:99 /usr/bin/openbox &

sleep 3
~/zello/zello &

sleep 3
x11vnc -display :99.0 -forever -passwd ${X11VNC_PASSWORD:-password} -xkb -noxrecord -noxfixes -noxdamage -wait 5 -shared

