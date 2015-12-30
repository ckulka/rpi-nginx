#!/bin/bash

if env | grep -q ^NGINX_NO_UPDATE=
then
	echo Update of Nginx disabled.
else
	echo Updating Nginx
	apt-get update
	apt-get upgrade -y nginx
	apt-get -y clean
fi


echo Starting Nginx
nginx -g "daemon off;"
