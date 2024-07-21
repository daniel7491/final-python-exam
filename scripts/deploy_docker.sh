#!/bin/bash
cd /home/ubuntu/app
docker pull daniel745/python-exam:1
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker run -d -p 80:80 daniel745/python-exam:1
