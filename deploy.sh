#!/bin/bash

rm -rf html
git clone https://github.com/albatrosary/SampleAppDeploy.git html
docker stop static_nginx
docker rm static_nginx
docker run -p 80:80 --name static_nginx -v /home/ashiras/Work/dockers/conf/static_nginx.conf:/etc/nginx/sites-enabled/default -v /home/ashiras/Work/dockers/html:/var/www -d test/nginx
