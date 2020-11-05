nano /etc/mosquitto/conf.d/default.conf


    listener 1883 localhost

    listener 8883
    certfile /etc/letsencrypt/live/acgdata.info/cert.pem
    cafile /etc/letsencrypt/live/acgdata.info/chain.pem
    keyfile /etc/letsencrypt/live/acgdata.info/privkey.pem

systemctl restart mosquitto
