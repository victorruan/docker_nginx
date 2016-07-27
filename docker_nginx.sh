#!/bin/sh
#进入文件所在目录
cd $(pwd)/$(dirname $0);
docker run --name nginx -v www:/usr/share/nginx/html -p 8080:80 -d victorruan/nginx

