mysqld --daemonize --user=root

sleep 10

mysql -u root < /opt/sh/apollo/scripts/apollo-config.sql
mysql -u root < /opt/sh/apollo/scripts/apollo-portal.sql
mysql -u root < /opt/sh/apollo/scripts/grant.sql

cp /opt/sh/apollo/conf/apollo-env.properties /opt/sh/apollo/apollo-portal/config/apollo-env.properties

bash -x /opt/sh/apollo/apollo-config/hzj/scripts/start-daemon.sh
bash -x /opt/sh/apollo/apollo-admin/hzj/scripts/start-daemon.sh
bash -x /opt/sh/apollo/apollo-portal/hzj/scripts/start-daemon.sh

tail -f /dev/null