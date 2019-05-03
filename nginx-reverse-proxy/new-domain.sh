# !/bin/bash
IPS=${HOME}/.iprc
if ! [ -f ${IPS} ]; then
  IPS="$(dirname $0)/.iprc"
fi
if ! [ -f ${IPS} ]; then
  echo "No IPS map exist. Check '${HOME}/.iprc' and '$(dirname $0)/.iprc' why?"
  exit 1
fi

if ! [ "$(id -u)" = "0" ]; then
  echo "Script must run as root."
  exit 2
fi

DOMAIN=$1
if [ "${DOMAIN}" = "" ] ; then
  echo "First argument must be a DOMAIN. Check 'cat ${IPS}' for valid domains."
  exit 3
fi

DOMAIN_IP=$(grep ${DOMAIN} ${IPS} | cut -d' ' -f2)
if [ "${DOMAIN_IP}" = "" ] ; then
  echo "Could not found ${DOMAIN} in ${IPS}."
  exit 4
fi

if [ "$(docker ps | grep ${DOMAIN})" = "" ]; then
  docker run --rm --net web --ip6 ${DOMAIN_IP} --name ${DOMAIN} -d jwausle/${DOMAIN}
fi

echo "
server {
    listen       80;
    listen  [::]:80;
    server_name  ${DOMAIN_IP};
    location / {
        proxy_pass \"http://[${IP}]\";
    }
}
" > /etc/nginx/sites-available/${DOMAIN}

ln -s /etc/nginx/sites-available/${DOMAIN} /etc/nginx/sites-enabled/${DOMAIN}

nginx -s reload

echo "certbot --pre-hook "nginx stop" --post-hook "nginx start" -d ${DOMAIN} # run after DNS edit on provider"
