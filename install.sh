#!/bin/bash
dnf install -y nginx
systemctl enable nginx
mkdir -p /usr/share/nginx/html
echo "<h1>Krrish says hello</h1>" > /usr/share/nginx/html/index.html
rm -f /usr/share/nginx/html/index.html.rpmnew
set -i 's#^\(\s*\)root\s.*;#\1root /usr/share/nginx/html;#' /etc/nginx/nginx.conf
systemctl restart nginx
EOF
