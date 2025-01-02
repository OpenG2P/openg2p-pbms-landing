#!/bin/bash

# Replace placeholders in HTML with environment variables
envsubst < /usr/share/nginx/html/pbms-landing.html > /usr/share/nginx/html/index.html.tmp
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# Start NGINX
nginx -g 'daemon off;'

