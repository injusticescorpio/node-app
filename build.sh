#!/bin/bash -ex
SCRIPT_DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"
image_tag="arjunscorpio2000"
cd $SCRIPT_DIR

set +x
source ./env.sh
docker login -u ${username} -p ${password}

set -x
docker build -t ${image_tag}/simple-nodeapp .

docker push ${image_tag}/simple-nodeapp



