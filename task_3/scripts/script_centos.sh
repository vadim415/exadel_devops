#!/bin/bash

OS=`cat /etc/os-release |grep  "^NAME" | cut -d= -f 2`
echo " <p> <h1> Hello World </h1></p>  <h1> my Operations system :  $OS </h1>  </p> author: Vadim.M</p>"  > /usr/share/httpd/noindex/index.html
