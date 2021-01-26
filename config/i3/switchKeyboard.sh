#!/bin/bash

KBD_FILE="${1}"

KBD_US='us'
KBD_US_CONF='-layout us'
KBD_INTL='us_intl'
KBD_INTL_CONF='-layout us -variant intl'
KBD_DE='de'
KBD_DE_CONF='-layout de -variant nodeadkeys'

KBD=('KBD_US' 'KBD_US_CONF' 'KBD_INTL' 'KBD_INTL_CONF' 'KBD_DE' 'KBD_DE_CONF')

function setKbd {
  setxkbmap ${!KBD[$((${1} + 1))]}
  echo ${!KBD[${1}]} > ${KBD_FILE}
  if [ "${#}" == "2" ] && [ "${2}" == "notify" ]; then
    notify-send "Switched to keyboard layout '${!KBD[${1}]}'"
  fi
}

function findIdx {
  index=0
  for i in ${KBD[@]}; do
    if [ "${1}" == "${!i}" ]; then
      break
    fi
    index=$((${index} + 1))
  done
  echo ${index}
}

function nextIdx {
  index=${1}
  if [ "${index}" == "$((${#KBD[@]} - 2))" ]; then
    index=0
  else
    index=$((${index} + 2))
  fi
  echo ${index}
}

if [ ! -f "${KBD_FILE}" ] || [ "${#}" == "2" ] && [ "${2}" == "restore" ]; then 
  setKbd 0
else
  KBD_STATUS=$(cat ${KBD_FILE})
  index=$(findIdx ${KBD_STATUS})
  setKbd $(nextIdx ${index}) notify
fi
