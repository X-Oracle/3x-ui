#!/bin/sh

# Start fail2ban
fail2ban-client -x start

# Run Nginx
nginx

/app/x-ui migrate

sqlite3 /etc/x-ui/x-ui.db "insert into settings (key , value) values ('webBasePath', '/panel/arv-ui/');"

# Run x-ui
exec /app/x-ui
