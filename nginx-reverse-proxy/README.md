# Revers proxy

The reverse proxy 'proxy_pass' incommit http requests to started docker container like that:

```
# ... snipped from '/etc/nginx/nginx.conf'
  http { 
    ...
    map $http_host $to_docker_ipv6 {
        default                     "http://localhost/50x.html";
        "blockchain.wasistdas.org" "http://[2a05:d014:fc2:3500:4000::2]";
    }
    ... 
    server { 
        location / {
            proxy_pass $to_docker_ipv6;
        }
    } 
```

## Install

```
apt-get install nginx
cp ./etc/nginx/nginx.conf /etc/nginx/nginx.conf
cp ./usr/share/nginx/html/50x.html /usr/share/nginx/html/50x.html 
cp ./usr/share/nginx/logs/access.log /usr/share/nginx/logs/access.log
cp ./usr/share/nginx/logs/error.log /usr/share/nginx/logs/access.log 

nginx start
```

## Check 

```
docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::2 --name wasistdas.org -d  -v /home/ubuntu/wasistdas.org/:/usr/local/apache2/htdocs/ httpd 
curl blockchain.wasistdas.org 
```

