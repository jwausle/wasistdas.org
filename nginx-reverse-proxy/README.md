
# Revers proxy

The reverse proxy 'proxy_pass' incommit http requests to started docker container like that:

```
# ... snipped from '/etc/nginx/nginx.conf'
http {
    include sites-enabled/*;
}
```

## Install

```
apt-get install nginx
cp ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
cp ./etc/nginx/sites-available /etc/nginx/sites-available
cp ./usr/share/nginx/html/50x.html /usr/share/nginx/html/50x.html 
cp ./usr/share/nginx/logs/access.log /usr/share/nginx/logs/access.log
cp ./usr/share/nginx/logs/error.log /usr/share/nginx/logs/access.log 

ln -s /etc/nginx/sites-enabled/blockchain.wasistdas.org /etc/nginx/sites-available/blockchain.wasistdas.org
ln -s /etc/nginx/sites-enabled/*.wasistdas.org /etc/nginx/sites-available/*.wasistdas.org

nginx start
```

## Enable https

```
# Followed instructioins from here
## Install certbot

$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:certbot/certbot
$ sudo apt-get update
$ sudo apt-get install python-certbot-nginx 

## Generate cerificates amd config nginx

$ sudo certbot --nginx

## Check cron job

$ sudo certbot renew --dry-run

```

## Check 

```
docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::2 --name wasistdas.org -d  -v /home/ubuntu/wasistdas.org/:/usr/local/apache2/htdocs/ httpd 
curl blockchain.wasistdas.org 
```

