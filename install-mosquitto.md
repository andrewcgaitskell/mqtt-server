started with 

https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-the-mosquitto-mqtt-messaging-broker-on-ubuntu-16-04

begin

sudo su

apt-add-repository ppa:mosquitto-dev/mosquitto-ppa
apt update
apt install mosquitto mosquitto-clients

## subscribe test

mosquitto_sub -h localhost -t test

control C to exit subscribe

## publish test

mosquitto_pub -h localhost -t test -m "hello world"

# settting up encryption

add-apt-repository ppa:certbot/certbot

apt update
apt install certbot

# open ports

80
443

## generate certificate

certbot certonly --standalone --standalone-supported-challenges http-01 -d mqtt.example.com
