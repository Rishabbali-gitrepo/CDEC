# user data for path based routing

````
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd 
systemctl enable httpd 
yum install git -y 
cd /root
git clone https://github.com/abhipraydhoble/templates.git
cd templates/cafe
mv * /var/www/html/
mkdir /var/www/html/coffee
mkdir /var/www/html/tea
cd /root/templates/coffee/
mv * /var/www/html/coffee/
cd /root/templates/tea/
mv * /var/www/html/tea/
````

````
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd 
yum install git -y 
cd /root
git clone https://github.com/abhipraydhoble/templates.git
cd templates/cafe
mv * /var/www/html/
cd /var/www/html/
mkdir tea coffee
cd /root/templates
mv  coffee/* /var/www/html/coffee/
mv  tea/* /var/www/html/tea/
````
