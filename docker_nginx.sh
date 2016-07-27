#!/bin/sh
#进入文件所在目录
cd $(pwd)/$(dirname $0);
docker run --name some-nginx -v /some/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx

