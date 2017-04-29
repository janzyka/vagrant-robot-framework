#!/bin/bash

LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get --force-yes -y install libnss3 libgconf-2-4 google-chrome-stable unzip
wget -O /tmp/chromedriver.zip http://chromedriver.storage.googleapis.com/2.27/chromedriver_linux64.zip && sudo unzip /tmp/chromedriver.zip chromedriver -d /usr/local/bin/
