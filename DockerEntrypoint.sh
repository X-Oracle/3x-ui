#!/bin/sh

# Start fail2ban
fail2ban-client -x start

# Run Nginx
nginx

# Run x-ui
exec /app/x-ui
