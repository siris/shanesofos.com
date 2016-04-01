# shanesofos.com nginx configuration
#
# HTTP config
server {
  listen 0.0.0.0:80;
  server_name www.shanesofos.com www.shanesofos.info www.shanesofos.net shanesofos.com shanesofos.info shanesofos.net;

  access_log /var/log/nginx/shanesofos.com.access_log main;
  error_log /var/log/nginx/shanesofos.com.error_log info;

  root /usr/share/nginx/shanesofos.com/live/;
  index index.html;
}

# HTTPS config
server {
  listen 0.0.0.0:443;
  server_name www.shanesofos.com www.shanesofos.info www.shanesofos.net shanesofos.com shanesofos.info shanesofos.net;

  ssl on;
  ssl_certificate /etc/ssl/nginx/shanesofos.pem;
  ssl_certificate_key /etc/ssl/nginx/shanesofos.key;

  access_log /var/log/nginx/shanesofos.com.ssl_access_log main;
  error_log /var/log/nginx/shanesofos.com.ssl_error_log info;

  root /usr/share/nginx/shanesofos.com/live/;
  index index.html;
}
