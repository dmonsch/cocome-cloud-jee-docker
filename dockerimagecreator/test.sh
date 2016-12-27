#!/bin/bash

# downloads the repo and copies the glassfish folders to ./ 

mkdir temp
git clone https://github.com/cocome-community-case-study/cocome-cloud-jee-docker.git ./temp


sudo mv ./temp/glassfish ./
sudo rm -r -f ./temp
./startdomain.sh
