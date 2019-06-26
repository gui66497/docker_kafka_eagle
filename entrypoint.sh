#!/bin/bash

sed -i "s/ZKSERVER/${ZKSERVER}/g" /kafka-eagle/conf/system-config.properties
chmod +x /kafka-eagle/bin/ke.sh
mkdir -p /kafka-eagle/db/
sh /kafka-eagle/bin/ke.sh start
tail -f /kafka-eagle/logs/log.log
