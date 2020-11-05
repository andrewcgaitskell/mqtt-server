mosquitto_passwd -c /etc/mosquitto/passwd sammy

nano /etc/mosquitto/conf.d/default.conf

allow_anonymous false
password_file /etc/mosquitto/passwd

systemctl restart mosquitto

test secure

mosquitto_pub -h localhost -t "test" -m "hello world"


mosquitto_sub -h localhost -t test -u "sammy" -P "password"
