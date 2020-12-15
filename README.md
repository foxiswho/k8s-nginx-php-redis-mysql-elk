# k8s-nginx-php-redis-mysql-elk
k8s nginx php redis mysql elasticsearch



# 部署

```bash
# 创建目录 ，且进入该目录，拉去 代码，设置 sh 末尾 的文件为 可执行文件

mkdir -p /www/k8s/ && cd /www/k8s/  && \
git clone https://github.com/foxiswho/k8s-nginx-php-redis-mysql-elk.git knprmelk  --depth=1 && \
cd knprmelk  && \
chmod +x *sh && \
./all.start.sh

```
执行成功后，`logstash` 第一次是启动不成功的，因为有案例 程序。