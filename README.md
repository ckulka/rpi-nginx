This repository provides a Dockerfile for Nginx on Raspberry Pi.


## Build Docker Image

```
# Shell working directory is where this README.md is
docker build -t ckulka/rpi-nginx .
docker run --rm -it ckulka/nginx
```


## Environment Variables

If the environment variable ```NGINX_NO_UPDATE``` is present, 
then Nginx will not be updated prior to starting it, as this 
saves startup time if necessary. 
Updating Nginx before running it is, however, the default setting.

```
docker run --rm -it -e NGINX_NO_UPDATE= ckulka/rpi-nginx
```


## docker-compose

I have provided a sample ```docker-compose.yml```.

```
# Shell working directory is where this README.md is
docker-compose up
```
