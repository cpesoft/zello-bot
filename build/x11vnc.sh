#! /bin/sh

cd ~
Xvfb :99 -ac -listen tcp -screen 0 800x600x24 &
sleep 3
/usr/bin/fluxbox -display :99 -screen 0 &
sleep 3
~/zello/zello &

sleep 3
x11vnc -display :99.0 -forever -passwd ${X11VNC_PASSWORD:-password} -xkb -noxrecord -noxfixes -noxdamage -wait 5 -shared

