#!/bin/sh

# APT im nicht-interaktiven Modus 
export DEBIAN_FRONTEND=noninteractive

# Systemaktualisierung und löschen von nutzlosen Datein
apt-get update
apt-get -y dist-upgrade
apt-get --purge -y autoremove
