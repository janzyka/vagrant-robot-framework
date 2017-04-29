#!/bin/bash
set -e

echo "Update system ..."

[[ -f /etc/apt/sources.list.orig ]] || sed -e s,http://archive\.,http://cn.archive\., -i.orig /etc/apt/sources.list

# Google chrome repo
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

apt-get update --fix-missing
LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get -o Acquire::ForceIPv4=true --force-yes -y upgrade
