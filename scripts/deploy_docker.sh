#!/bin/bash
mkdir app
cd /home/ec2-user/app
sudo chown ec2-user:ec2-user /home/ec2-user/app
docker pull daniel745/python-exam:1
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker run -d -p 80:80 daniel745/python-exam:1
