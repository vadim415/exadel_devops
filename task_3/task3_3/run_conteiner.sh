#!/bin/bash
sudo docker build -t nginx:ver_1 .
sudo docker run -d -p 80:80 nginx:ver_1
sudo docker ps 
