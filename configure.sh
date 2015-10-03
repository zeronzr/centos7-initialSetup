#!/bin/bash

echo Installing Spotify
echo ----------------------
sudo yum-config-manager --add-repo=http://negativo17.org/repos/epel-spotify.repo
sudo yum-config-manager --disable rpmfusion-free-rawhide
sudo yum-config-manager --enable rpmfusion-free
sudo yum-config-manager --enable rpmfusion-free-updates
sudo yum distro-sync
yum remove epel-release
sudo yum remove epel-release
sudo yum install epel-release
sudo yum -y install spotify-client --skip-broken

