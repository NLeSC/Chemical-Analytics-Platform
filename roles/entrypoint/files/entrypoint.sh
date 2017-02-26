#!/bin/sh

echo "Starting rserve"
gosu vagrant /usr/bin/R CMD Rserve --vanilla &
echo "Starting postgresql"
/etc/init.d/postgresql start
echo "Starting wiki"
/usr/local/bin/gollum --port 4567 --no-edit /opt/wiki &
echo "Starting vnc"
gosu vagrant /usr/bin/tightvncserver.sh vagrant
echo "Starting novnc at http://<hostname>:6080/vnc_auth.html, use password 'vagrant'"
websockify --web=/usr/share/novnc 6080 0.0.0.0:5901
