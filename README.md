# Domain sources wasistdas.org

The domains [*.wasistdas.org](http://wasistdas.org) is a summary of my (jwausle) topics where im interested in. Any subdomain is a summary of topic as single page.

## Subdomains

- [blockchain.wasistdas.org](http://blockchain.wasistdas.org) (under construction)
- [docker.wasistdas.org](http://bitcoin.wasistdas.org) (in construction)
- [bitcoin.wasistdas.org](http://bitcoin.wasistdas.org) (in planing)
- [ethereum.wasistdas.org](http://ethereum.wasistdas.org) (in planing)
- [iota.wasistdas.org](http://iota.wasistdas.org) (in planing)

- [jwausle.wasistdas.org](http://jwausle.wasistdas.org) (its me in planning)

## Todo on host

- install `docker`
- install `nginx`
- fetch data from `nginx-reverse-proxy/*` to host:/
- `$ ssh root@host`

```
$ nginx -t # check nginx config
```
- enable https with letsencrypt 

```
$ sudo apt-get update
$ sudo apt-get install software-properties-common
$ sudo add-apt-repository ppa:certbot/certbot
$ sudo apt-get update
$ sudo apt-get install python-certbot-nginx 

$ sudo certbot --nginx
```
- start websites `blockchain.wasistdas.org`

```
$ docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::2 --name blockchain.wasistdas.org -d jwausle/blockchain.wasistdas.org
$ ln -s /etc/nginx/sites-available/blockchain.wasistdas.org /etc/nginx/sites-enabled/blockchain.wasistdas.org
$ crontab -e 
> 0 1 * * * (docker stop blockchain.wasistdas.org && docker pull jwausle/blockchain.wasistdas.org && docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::2 --name blockchain.wasistdas.org -d jwausle/blockchain.wasistdas.org)
```
- start other websites `docker.wasistdas.org`



