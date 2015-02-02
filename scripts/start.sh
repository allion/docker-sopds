!#/bin/bash

if [ ! -f /sopds-master/db/created ]; then
/usr/bin/mysqld_safe &
sleep 10s
/sopds-master/db/db_create.sh
touch /sopds-master/db/created
sleep 10s
killall mysqld_safe
fi
supervisord -n

