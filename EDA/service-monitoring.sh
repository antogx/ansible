#!/bin/bash

while true
do
   if ! $(systemctl is-active --quiet dummy.service)
   then
       echo "Service not running"
       curl -H 'Content-Type: application/json' -d '{"message": "Service Inactive"}' 192.168.190.145:5000/endpoint >  /dev/null 2>&1

   fi
   sleep 20
done &
