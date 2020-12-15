#!/usr/bin/env bash

DIR=$(cd $(dirname $0); pwd)

echo "k8s   一键快速 部署"
echo " "
echo " "
echo "k8s   一键快速 部署 开发环境 By fox"
echo " "
echo " "
echo "mariadb       开始部署"
echo " "
. ${DIR}/create.b.mariadb.start.sh

echo "mariadb       部署完成"

echo "redis         开始部署"
echo " "
sleep 3s


. ${DIR}/create.r.redis.start.sh

echo "redis         部署完成"


echo "php         开始部署"
echo " "
sleep 3s

. ${DIR}/create.p.php.start.sh

echo "php         部署完成"


echo "phpcli         开始部署"
echo " "
sleep 3s

. ${DIR}/create.p.php-cli.start.sh

echo "phpcli         部署完成"

echo "nginx         开始部署"
echo " "
sleep 3s

. ${DIR}/create.n.nginx.start.sh

echo "nginx         部署完成"



echo "elasticsearch         开始部署"
echo " "
sleep 3s

. ${DIR}/create.elk.elasticsearch.start.sh

echo "elasticsearch         部署完成"

echo "kibana         开始部署"
echo " "
sleep 3s

. ${DIR}/create.elk.kibana.start.sh

echo "kibana         部署完成"

echo " "
echo " "
echo "k8s   一键快速 部署 开发环境 By fox"
echo " "
echo " "
echo "部署完成"
echo "部署完成"
echo "部署完成"
echo "部署完成"
echo "部署完成"


echo "已安装 pod 如下，如果某些 pod 没有安装，请执行 单独安装命令"

kubectl get pods