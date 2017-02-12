#!/bin/bash
set -e

echo '####################  pull changes   ####################### '

##############################################################################

cd /usr/src/cocome/cocome-maven-project git checkout master && git pull

cd /usr/src/serviceadapter git pull

echo '####################  pulled changes   ####################### '

cd /usr/src/cocome/cocome-maven-project && mvn -s /usr/src/cocome-maven-project-setting.xml clean post-clean

cd /usr/src/cocome/cocome-maven-project && mvn -s /usr/src/cocome-maven-project-setting.xml install


cd /usr/src/serviceadapter && mvn -s /usr/src/serviceadapter-settings.xml clean post-clean 

cd /usr/src/serviceadapter && mvn -s /usr/src/serviceadapter-settings.xml install


##############################################################################
#restart needed because of changed attributes like password
#Important notice: restart of the glassfish domains or start in general has to take playce in this order!
#echo '########## restart database ##################'
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-database 
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-database 

#echo '########## restart domain REGISTRY ##################'
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain registry
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain registry

#echo '########## restart domain ADAPTER ##################'
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain adapter
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain  adapter

#echo '########## restart domain WEB ##################'
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain web
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain  web

#echo '########## restart domain STORE ##################'
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain store
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain  store

#echo '########## restart domain ENTERPRISE ##################'
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin stop-domain enterprise
#/usr/src/glassfish/glassfish4/glassfish/bin/asadmin start-domain -v enterprise


