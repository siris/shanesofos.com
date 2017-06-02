server {
  listen 0.0.0.0:80;
  server_name www.shanesofos.com www.shanesofos.info www.shanesofos.net shanesofos.com shanesofos.info shanesofos.net;
  root /usr/share/nginx/shanesofos.com/site/;
  index index.html;

  access_log /var/log/nginx/shanesofos.com.access_log main;
  error_log /var/log/nginx/shanesofos.com.error_log info;
}

server {
  listen 0.0.0.0:443;
  server_name www.shanesofos.com www.shanesofos.info www.shanesofos.net shanesofos.com shanesofos.info shanesofos.net;
  root /usr/share/nginx/shanesofos.com/site/;
  index index.html;

  access_log /var/log/nginx/shanesofos.com.ssl_access_log main;
  error_log /var/log/nginx/shanesofos.com.ssl_error_log info;

  ssl on;
  ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
  ssl_certificate /etc/ssl/nginx/shanesofos.pem;
  ssl_certificate_key /etc/ssl/nginx/shanesofos.key;
  add_header Strict-Transport-Security "max-age=63072000; includeSubdomains; ";
}
