#!/bin/bash

set -e

ADMIN_PORT=8048
touch /usr/src/glassfish/glassfish4/glassfish/passwordfile

echo "AS_ADMIN_PASSWORD=${PASSWORD}" > /usr/src/glassfish/glassfish4/glassfish/passwordfile
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile --port $ADMIN_PORT create-domain --adminport $ADMIN_PORT specjent2010
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain specjent2010




echo 'ENABLE remote access to admin console (port $ADMIN_PORT)'
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile --port $ADMIN_PORT enable-secure-admin

/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain specjent2010
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain -v specjent2010
