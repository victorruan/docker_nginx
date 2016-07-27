#!/bin/sh
#进入文件所在目录
current_dir=`echo $(pwd)/$(dirname $0)`;
cd $current_dir;
current_dir=$(pwd)
echo $current_dir;
docker run \
--name nginx \
-v $current_dir/www:/usr/share/nginx/html \
-v $current_dir/conf/nginx.conf:/etc/nginx/nginx.conf \
-v $current_dir/conf/conf.d:/etc/nginx/conf.d \
-v $current_dir/log/error.log:/var/log/nginx/error.log \
-v $current_dir/log/access.log:/var/log/nginx/access.log \
-p 8080:80 \
-d victorruan/nginx

