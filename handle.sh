
COPY "raw".data_device_tbl FROM MQTT-Values.csv

sudo printf "COPY "raw".data_device_tbl FROM MQTT-Values.csv;" > poptable.sql

sudo -u postgres psql -f poptable.sql


sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"

sudo -u postgres psql -c "COPY raw.data_device_tbl FROM MQTT-Values.csv;"

