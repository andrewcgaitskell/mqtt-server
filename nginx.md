
# add the fixed external ip to godaddy

An A record with www.example.com pointing to your server’s public IP address.

# sign into vm

  sudo su

  add-apt-repository ppa:certbot/certbot

You’ll need to press ENTER to accept. Then, update the package list to pick up the new repository’s package information.

# update packages

apt update

# install certbot's nginx 

And finally, install Certbot’s Nginx package with apt-get.

apt install python-certbot-nginx

Certbot is now ready to use, but in order for it to configure SSL for Nginx, we need to verify some of Nginx’s configuration.

copy /etc/nginx/sites-enabled/example.com /etc/nginx/sites-available/example.com

# verify the syntax of your configuration edits.

nginx -t

# generate and install keys

certbot --nginx -d example.com -d www.example.com

certbot --nginx -d acgdata.info -d www.acgdata.info

# back up keys

apt install zip

cd /etc/letsencrypt

ls

cd ..

zip -r letsencryptbackup.zip letsencrypt

download zip file to local drive
