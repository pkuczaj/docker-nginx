# docker-nginx
NGINX Docker Image Build

Build the image: (Only Once or when you want to refresh the build)

$ docker build -t nginxservice .


Initiate a Docker NGINX container: (Running instance ready to be used)

$ docker run --rm -it --name nginxservice -p 80:80 -p 443:443 -v /data:/data -v ~/Development/Docker/nginx/conf.d:/etc/nginx/conf.d -v ~/Development/Docker/nginx/ssl:/etc/ssl/private -v ~/Development/nginx:/var/www --link mysql:mysql -d nginxservice
