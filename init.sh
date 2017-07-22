#!/bin/bash

core() {
  name=${1:-"tmp-node"}
  echo $name
  git clone git@github.com:g3org3/tmp-node.git $name
  cd $name
  rm -fr .git
  git init
  echo "change name in package.json!!!"
}

core $1