#!/usr/bin/env bash

apt-get update -qq
apt-get install --no-install-recommends software-properties-common dirmngr
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# or you can do it the slow way...
apt-get install -y libxml2-dev libcurl4-openssl-dev libssl-dev
apt install -y r-base

# these lines install the packages that is needed both
# 1. the student code 
# 2. the autograding code
Rscript -e "install.packages('AER')" 
Rscript -e "install.packages('gradeR')" 
Rscript -e "install.packages('stringr')" 
