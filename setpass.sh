#!/bin/sh

prog=/usr/sbin/vncpasswd
mypass="vncrocks"

/usr/bin/expect <<EOF
spawn "$prog"
expect "Password:"
send "$mypass\r"
expect "Verify:"
send "$mypass\r"
expect eof
exit
EOF
