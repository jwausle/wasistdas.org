# lvb1click.wasistdas.org

> link: https://lvb1click.wasistdas.org/#/
> source: https://github.com/jwausle/de.jwausle.lvb1click 

Bus and tram stop overview of Leipzig with 1-click requests for next departures.

# Howto release

## Build and push changes

```
git clone https://github.com/jwausle/de.jwausle.lvb1click
cd de.jwausle.lvb1click
yarn run release 
# build quasar app as docker image and push it to jwausle/lvb1click:quasar
```

## Fetch changes on AWS 

```
ssh ...
docker stop lvb1click.wasistdas.org 
docker rmi jwausle/lvb1click:quasar
docker run -d --rm --name lvb1click.wasistdas.org --net web --ip6 2a05:d014:fc2:3500:4000::4 jwausle/lvb1click:quasar 
```

## Optional: update cron

```
crontab -l 
0 1 * * * (docker stop lvb1click.wasistdas.org && docker pull jwausle/lvb1click.wasistdas.org && docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::4 --name lvb1click.wasistdas.org -d jwausle/lvb1click.wasistdas.org)
``` 
