#!/bin/bash
datestring=$(date '+%Y-%m-%d--%H-%M-%S');
dateval=$(date '+%Y-%m-%dT%H:%M:%S');
dir=`dirname "$0"`
total=$(curl -s "192.168.178.75/sensor/total_count"| sed 's/.*"value"://'| sed 's/}//')
current=$(curl -s "http://192.168.178.75/sensor/geiger_counter"| sed 's/.*"value"://'| sed 's/}//')
echo "${dateval},${current},${total}" >> "${dir}/data/data.csv"
