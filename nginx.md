sudo su

apt install nginx

## check server

systemctl status nginx

if you get an error

mkdir /etc/systemd/system/nginx.service.d

printf "[Service]\nExecStartPost=/bin/sleep 0.1\n" > /etc/systemd/system/nginx.service.d/override.conf

systemctl daemon-reload

systemctl restart nginx 

systemctl status nginx

Step 1 — Installing Certbot

add-apt-repository ppa:certbot/certbot

apt-get update

apt install python-certbot-nginx
sudo systemctl reload nginx

HTTPS Through the Firewall

The Nginx plugin will take care of reconfiguring Nginx and reloading the config whenever necessary:

    sudo certbot --nginx -d example.com -d www.example.com

    sudo certbot --nginx -d acgdata.info -d www.acgdata.info

This runs certbot with the --nginx plugin, using -d to specify the names we’d like the certificate to be valid for.


# back up keys

apt install zip

cd /etc/letsencrypt

ls

cd ..

zip -r letsencryptbackup.zip letsencrypt

download zip file to local drive
