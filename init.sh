#!/bin/bash

core() {
  name=${1:-"tmp-node"}
  echo $name
  git clone git@github.com:g3org3/tmp-node.git $name
  rm -fr $name/.git
  echo "cd $name"
  echo "remove git"
  echo "change name in package.json!!!"
}

core $1