apt update
apt upgrade -y

apt install sudo

apt install -y software-properties-common
apt install -y postgresql-10
apt install -y postgresql-client-10
postgres psql -c "ALTER USER postgres WITH PASSWORD 'postgres';"

postgres psql -c "CREATE EXTENSION adminpack;"

psqluser="pythonuser"   # Database username
psqlpass="pythonuser"  # Database password
psqldb="data"   # Database name

printf "CREATE ROLE pythonuser WITH LOGIN SUPERUSER INHERIT CREATEDB CREATEROLE NOREPLICATION PASSWORD 'pythonuser';\nCREATE DATABASE $psqldb WITH OWNER $psqluser;" > createuserdb.sql

postgres psql -f createuserdb.sql

apt install postgis
