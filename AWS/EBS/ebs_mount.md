## launch ec2 instance
<img width="1932" height="726" alt="image" src="https://github.com/user-attachments/assets/14a23deb-b6f6-4373-b0a8-3fe5eb4e87c1" />


## create ebs volume 
note: make sure instance and volume are in same az
<img width="1025" height="649" alt="image" src="https://github.com/user-attachments/assets/84f7ac2a-39a6-4724-8126-de7ac95e9759" />
<img width="1652" height="237" alt="image" src="https://github.com/user-attachments/assets/f059ae8e-c1dd-47f7-a29c-3c28fd6d2b84" />

## attach to instance 
<img width="1650" height="450" alt="image" src="https://github.com/user-attachments/assets/76247265-f758-4b5a-a9bb-6ed0b6628972" />
<img width="1870" height="712" alt="image" src="https://github.com/user-attachments/assets/5ae3cb09-215f-43ed-af51-5a05002ebb3c" />

## connect to instance 
<img width="1767" height="738" alt="image" src="https://github.com/user-attachments/assets/828d5a0e-3179-406a-8e1f-0c458888bb26" />
<img width="1177" height="478" alt="image" src="https://github.com/user-attachments/assets/5f3ae767-a099-410b-ae70-1dbdfd99001b" />

## assign file system
````
mkfs.xfs  /dev/nvme1n1
````
<img width="1316" height="361" alt="image" src="https://github.com/user-attachments/assets/c4dda496-aeb6-456f-a8ca-4e305aad9f2b" />

## now mount ebs volume 
**1. temp mount:**
````
mount /dev/nvme1n1  /mnt
````
**2. Permanent Mount:**
<img width="887" height="66" alt="image" src="https://github.com/user-attachments/assets/451d80a5-1a90-4066-825e-38294461db86" />
<img width="1912" height="375" alt="image" src="https://github.com/user-attachments/assets/8c1fd295-21a0-48ae-b4da-ce6705c24798" />
<img width="1132" height="476" alt="image" src="https://github.com/user-attachments/assets/e360ed47-28af-4b9f-aff8-3860f789a2a3" />
<img width="992" height="517" alt="image" src="https://github.com/user-attachments/assets/2ef40656-6292-439b-af7e-5e2a47341650" />


## detach volume 
````
umount /dev/nvme1n1
````






