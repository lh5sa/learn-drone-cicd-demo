#!/bin/bash

docker_container_name="learn-drone-cicd-demo"
docker_image_name="nginx:stable"

# 先停止原来的
docker stop $docker_container_name
docker rm $docker_container_name

# 启动容器
docker run -d \
	-p 4000:80 \
	-v $(pwd)/docs/.vitepress/dist:/usr/share/nginx/html \
	--name $docker_container_name $docker_image_name
