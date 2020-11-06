
COPY "raw".data_device_tbl FROM MQTT-Values.csv

sudo printf "COPY "raw".data_device_tbl FROM MQTT-Values.csv;" > poptable.sql

sudo -u postgres psql -f poptable.sql

