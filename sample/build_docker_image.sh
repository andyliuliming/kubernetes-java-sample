#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
pushd $DIR/maven/webapp
  mvn package
popd

cp $DIR/maven/webapp/target/clustered-app.war $DIR/docker-images/