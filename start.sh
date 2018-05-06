#!/bin/sh

#
# AirVideoServerHD start script
#

# change this variable if your system doesn't have dbus socket at /var/run
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/var/run/dbus/system_bus_socket

# and run the server
mkdir -p /config
mkdir -p /video
cp -n /app/Server.properties /config/Server.properties
/app/AirVideoServerHD --config=/config/Server.properties
