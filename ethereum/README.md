
# blockchain

> Sources of ethereum.wasistdas.org

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report

# run unit tests
npm run unit

# run all tests
npm test
```

For a detailed explanation on how things work, check out the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).

## Deploy


```
scp -r -i ~/.aws/jwausle.pem dist ubuntu@ec2-35-158-178-132.eu-central-1.compute.amazonaws.com:/tmp/dist
ssh -v -i ~/.aws/jwausle.pem ubuntu@ec2-35-158-178-132.eu-central-1.compute.amazonaws.com
mv /home/ubuntu/wasistdas.org /home/ubuntu/wasistdas.org.bak
cp /tmp/dist /home/ubuntu/wasistdas.org
sudo -u
docker run --rm --name wasistdas.org -d -p 80:80 -v /home/ubuntu/wasistdas.org/:/usr/share/nginx/html:ro nginx
```

https://docs.aws.amazon.com/de_de/AmazonVPC/latest/UserGuide/get-started-ipv6.html

https://docs.aws.amazon.com/de_de/AmazonVPC/latest/UserGuide/get-started-ipv6.html

```
cat /etc/docker/daemon.json
{
  "ipv6": true,
  "fixed-cidr-v6": "2a05:d014:fc2:3500:5000::/80"
}
ip -6 route add 2a05:d014:fc2:3500:5000::/80  dev docker0
sysctl net.ipv6.conf.default.forwarding=1
sysctl net.ipv6.conf.all.forwarding=1

# optional
sysctl net.ipv6.conf.eth0.accept_ra=2
```

```
cp /etc/docker/daemon.json.bak /etc/docker/daemon.json

service docker start
service docker stop
```

https://docs.docker.com/v17.09/engine/userguide/networking/default_network/ipv6/#how-ipv6-works-on-docker

```
$ docker build -t jwausle/ethereum.wasistdas.org .
$ docker push jwausle/ethereum.wasistdas.org

$ docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::3 --name ethereum.wasistdas.org -d jwausle/ethereum.wasistdas.org
```
