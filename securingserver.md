mosquitto_passwd -c /etc/mosquitto/passwd sammy

nano /etc/mosquitto/conf.d/default.conf

allow_anonymous false
password_file /etc/mosquitto/passwd

