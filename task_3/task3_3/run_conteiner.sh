#!/bin/bash
sudo docker build -t nginx:task4 .
sudo docker run -d -p 80:80 nginx:nginx:task4
sudo docker ps 
