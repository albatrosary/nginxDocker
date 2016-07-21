#!/bin/bash

rm -rf html
git clone https://github.com/albatrosary/SampleAppDeploy.git html
docker stop static_nginx
docker rm static_nginx
docker run -p 80:80 --name static_nginx -v `pwd`/conf/static_nginx.conf:/etc/nginx/sites-enabled/default -v `pwd`/html:/var/www -d test/nginx
