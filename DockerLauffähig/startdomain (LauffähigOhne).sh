#!/bin/bash

set -e

ADMIN_PORT=8048
touch /usr/src/glassfish/glassfish4/glassfish/passwordfile

echo "AS_ADMIN_PASSWORD=${PASSWORD}" > /usr/src/glassfish/glassfish4/glassfish/passwordfile


/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain web




echo 'ENABLE remote access to admin console (port $ADMIN_PORT)'
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile --port $ADMIN_PORT enable-secure-admin

/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain web
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain -v web

