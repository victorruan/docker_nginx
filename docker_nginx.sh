#!/bin/sh
#进入文件所在目录
current_dir=`echo $(pwd)/$(dirname $0)`;
cd $current_dir;
current_dir=$(pwd)
echo $current_dir;
docker run --name nginx -v $current_dir/www:/usr/share/nginx/html -p 8080:80 -d victorruan/nginx

