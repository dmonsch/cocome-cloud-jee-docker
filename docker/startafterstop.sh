#!/bin/bash
set -e

echo '####################  StartAfterStop   ####################### '
#start database
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-database 

#start web domain
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain web

#start store domain
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain store 

#start adapter domain
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain adapter

#start enterprise domain
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain enterprise

#start registry domain
/usr/src/glassfish/glassfish4/glassfish/bin/asadmin --user admin --passwordfile /usr/src/glassfish/glassfish4/glassfish/passwordfile start-domain -v registry
