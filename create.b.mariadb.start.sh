#!/usr/bin/env bash

DIR=$(cd $(dirname $0); pwd)

docker pull mariadb:10.4

mkdir -p ${DIR}/mariadb/data
mkdir -p ${DIR}/mariadb/mariadb.conf.d
chmod -R 777 ${DIR}/mariadb/data
chmod -R 777 ${DIR}/mariadb/mariadb.conf.d



kubectl create -f  ${DIR}/mariadb/service.yml
kubectl create -f  ${DIR}/mariadb/pod.yml

echo "等待 mariadb pod 容器启动成功"
echo "180 秒等待时间"

kubectl get pod



