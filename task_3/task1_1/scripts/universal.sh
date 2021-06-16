#!/bin/bash
OS=$(awk '/DISTRIB_ID=/' /etc/*-release | sed 's/DISTRIB_ID=//' | tr '[:upper:]' '[:lower:]')
if [[ $OS -eq ubuntu  ]]
then
  echo echo "Os is $OS , run script for $OS "
  chmod +x /opt/ubuntu.sh
  sh /opt/ubuntu.sh
elif [[ $OS -eq centos ]]
then
  echo "Os is $OS , run script for $OS"
  chmod +x /opt/centos.sh
  sh /opt/centos.sh
else
  echo "script  not fount ,please write script for needs OS and after the run bash script"
fi
