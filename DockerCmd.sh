#!/bin/sh

fail2ban-client -x start

nginx

/app/x-ui migrate

sqlite3 /etc/x-ui/x-ui.db "insert into settings (key , value) values ('webBasePath', '/panel/arv-ui/');"

exec /app/x-ui