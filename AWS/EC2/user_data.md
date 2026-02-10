## User Data to install httpd webserver for amazon linux
````
#!/bin/bash
sudo -i
yum update  -y
yum install httpd -y
systemctl start httpd 
systemctl enable httpd 
echo "welcome to cloudblitz" > /var/www/html/index.html
````
## Static Website Templates Link
````
https://github.com/abhipraydhoble/templates.git
````
