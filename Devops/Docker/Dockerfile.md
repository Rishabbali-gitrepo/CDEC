
````
vim Dockerfile
````
````
FROM amazonlinux 
RUN  yum update -y 
RUN  yum install httpd -y 
WORKDIR /var/www/html/
COPY  index.html /var/www/html/
EXPOSE 80 
CMD ["httpd", "-D", "FOREGROUND"]
````

````
echo "Hello Docker" > index.html
````

````
docker build -t img-1 .
````

````
docker run -itd --name c1 -p 80:80 img-1
````
