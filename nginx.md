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

## HTTPS Through the Firewall

The Nginx plugin will take care of reconfiguring Nginx and reloading the config whenever necessary:

    sudo certbot --nginx -d example.com -d www.example.com

    sudo certbot --nginx -d acgdata.info -d www.acgdata.info

This runs certbot with the --nginx plugin, using -d to specify the names we’d like the certificate to be valid for.

ongratulations! You have successfully enabled https://acgdata.info and
https://www.acgdata.info
You should test your configuration at:
https://www.ssllabs.com/ssltest/analyze.html?d=acgdata.info
https://www.ssllabs.com/ssltest/analyze.html?d=www.acgdata.info
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
IMPORTANT NOTES:                                                                                                   
 - Congratulations! Your certificate and chain have been saved at:                                                 
   /etc/letsencrypt/live/acgdata.info/fullchain.pem
   Your key file has been saved at:
   /etc/letsencrypt/live/acgdata.info/privkey.pem
   Your cert will expire on 2021-02-03. To obtain a new or tweaked
   version of this certificate in the future, simply run certbot again
   with the "certonly" option. To non-interactively renew *all* of
   your certificates, run "certbot renew"
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
 - If you like Certbot, please consider supporting our work by:
   Donating to ISRG / Let's Encrypt:   https://letsencrypt.org/donate
   Donating to EFF:                    https://eff.org/donate-le
 - We were unable to subscribe you the EFF mailing list because your
   e-mail address appears to be invalid. You can try again later by
   visiting https://act.eff.org.

Visit www.acgdata.info


# back up keys

apt install zip

cd /etc/letsencrypt

ls

cd ..

zip -r letsencryptbackup.zip letsencrypt

download zip file to local drive
