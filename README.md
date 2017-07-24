# tmp-node

```sh
init() {
  curl -sS https://raw.githubusercontent.com/g3org3/tmp-node/master/init.sh > init.sh &&\
  chmod +x init.sh &&\
  ./init.sh $1;
  rm init.sh;
}

init my-app
```
