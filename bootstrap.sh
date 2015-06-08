#!/usr/bin/env bash

pebbleroot=~/pebble-dev
sdkfile=PebbleSDK-3.0.tar.gz
toolchainfile=arm-cs-tools-ubuntu-universal.tar.gz
workdir=$pebbleroot/PebbleSDK-3.0

sudo apt-get -y install git

mkdir $pebbleroot 
cd $pebbleroot
tar -zxf /vagrant/$sdkfile
echo "export PATH=$workdir/bin:$PATH" >> ~/.bash_profile
echo "alias ls='ls --color'" >> ~/.bash_profile
source ~/.bash_profile

sudo apt-get -y install python-pip python2.7-dev
sudo pip install virtualenv

cd $workdir
tar -zxf /vagrant/$toolchainfile
virtualenv --no-site-packages .env
source .env/bin/activate
pip install cython
pip install -r requirements.txt
deactivate

sudo apt-get -y install libsdl1.2debian libfdt1 libpixman-1-0
