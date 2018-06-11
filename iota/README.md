
# blockchain

> Sources of iota.wasistdas.org

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
$ docker build -t jwausle/iota.wasistdas.org .
$ docker push jwausle/iota.wasistdas.org

$ docker run --rm --net web --ip6 2a05:d014:fc2:3500:4000::4 --name iota.wasistdas.org -d jwausle/iota.wasistdas.org
```
