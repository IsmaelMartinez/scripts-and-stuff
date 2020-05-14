#!/bin/bash
echo "#### Restarting antivirus ####"
sudo systemctl restart sav-protect.service
echo "#### Updating packages ####"
sudo apt update -y
echo "#### Upgrading packages ####"
sudo apt upgrade -y
echo "#### Removing unused packages ####"
sudo apt autoremove -y
echo "#### Authenticating with Okta in staging account ####"
okta-awscli --okta-profile staging --profile staging -d
echo "#### Starting VPN service ####"
sudo vpnc
echo "#### Starting VPN proxy in port 1080 ####"
ssh -D 1080 edi-devjump.pluk.eeghlan.net
