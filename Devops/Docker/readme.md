<img width="1582" height="635" alt="image" src="https://github.com/user-attachments/assets/7deeaa3c-15dd-4eab-a6bf-2beeb51e529a" />
<img width="1165" height="342" alt="image" src="https://github.com/user-attachments/assets/ffe62cd4-5808-436b-9bd3-497206cb8105" />
<img width="1170" height="492" alt="image" src="https://github.com/user-attachments/assets/04aeaaa0-7046-4d5c-bbd9-c30fed6914e4" />


### Docker Installation (amazon linux)
````
sudo yum update -y 
sudo yum install docker -y 
sudo systemctl start docker 
sudo systemctl enable docker 
sudo usermod -aG docker ec2-user 
newgrp docker
sudo chmod 777 /var/run/docker.sock
````
### Docker Installation (ubuntu)
````
sudo apt update -y 
sudo apt install docker.io -y 
sudo systemctl start docker 
sudo systemctl enable docker 
sudo usermod -aG docker ubuntu 
newgrp docker
sudo chmod 777 /var/run/docker.sock
````
