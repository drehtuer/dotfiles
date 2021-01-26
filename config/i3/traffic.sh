#!/bin/bash

phy=${1}
interval=${2}
output=${3}

rx=0
tx=0

function scaleRate {
  scaled=$(echo "${1}" | awk '{printf "%0.2f", $1/1000000}')
  echo ${scaled}
}

while true; do
  ifcfg=$(ifconfig ${phy})
  rx_new=$(echo "${ifcfg}" | grep ${phy} -A7 | awk '/RX.*bytes/ {print $5}')
  tx_new=$(echo "${ifcfg}" | grep ${phy} -A7 | awk '/TX.*bytes/ {print $5}')
  rx_rate=$(( (${rx_new} - ${rx}) * 8 / ${interval} ))
  tx_rate=$(( (${tx_new} - ${tx}) * 8 / ${interval} ))
  rx=${rx_new}
  tx=${tx_new}
  echo "RX $(scaleRate ${rx_rate}) Mbps, TX $(scaleRate ${tx_rate}) Mbps" > ${output}
  sleep ${interval}
done
