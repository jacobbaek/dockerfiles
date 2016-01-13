#!/bin/bash

suricata -c /etc/suricata/suricata.yaml -i eth0 >> /dev/null &
/kibana-4.3.1-linux-x64/bin/kibana >> /dev/null &
service elasticsearch start
service logstash start
