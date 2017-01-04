#! /bin/bash

echo "Test"
ADMIN_PORT=8048
touch /usr/src/glassfish/glassfish4/glassfish/passwordfile

echo "AS_ADMIN_PASSWORD=password" > /usr/src/glassfish/glassfish4/glassfish/passwordfile
