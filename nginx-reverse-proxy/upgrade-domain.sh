#!/bin/bash
IPS=${HOME}/.iprc

if ! [ "${UID}" = "0" ]; then
  echo "Script must run as root."
  exit 1
fi

DOMAIN=$1
if [ "${DOMAIN}" = "" ] ; then
  echo "First argument must be a DOMAIN. Check 'cat ${IPS}' for valid domains."
  exit 2
fi

DOMAIN_IP=$(grep ${DOMAIN} ${IPS} | cut -d' ' -f2)
if [ "${DOMAIN_IP}" = "" ] ; then
  echo "Could not found ${DOMAIN} in ${IPS}."
  exit 3
fi

if [ "$(docker ps | grep ${DOMAIN})" = "" ]; then
  docker stop ${DOMAIN}
fi

docker pull jwausle/${DOMAIN}

docker run --rm --net web --ip6 ${DOMAIN_IP} --name ${DOMAIN} -d jwausle/${DOMAIN}

if [[ $* = *"--renew"* ]]; then
  sleep 1
  certbot renew --pre-hook "nginx stop" --post-hook "nginx start" -d ${DOMAIN}
else
  echo "Skipped cerbot certificate renew. Use '--renew' to force update."
fi
