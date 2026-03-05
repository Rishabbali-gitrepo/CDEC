<img width="946" height="467" alt="image" src="https://github.com/user-attachments/assets/3cd0524e-6c8c-48ab-b09a-4a11bb51b548" />

Scaling is something that we need to consider thoroughly when designing a system. 
Scaling simply means increasing the capacity as needed when our system grows. 
There are two ways to scale.

- **Vertical Scaling**
- **Horizontal Scaling**


# AutoScaling
Autoscaling is a cloud computing technique that dynamically adjusts computational resources—such as 
CPU, memory, or the number of active server instances—to match real-time demand. 
By automatically scaling out (adding) or in (removing) resources based on performance metrics like CPU usage, 
it ensures consistent application performance while minimizing costs

<img width="1005" height="328" alt="image" src="https://github.com/user-attachments/assets/309426f5-f185-467d-abd8-11b666cd31c1" />


---

# create an launch template
<img width="1650" height="660" alt="image" src="https://github.com/user-attachments/assets/fcef89ac-b057-474c-a127-ac73299c3a0f" />

---

# create autoscaling group

###  step1:  select template and give name to asg
<img width="1908" height="622" alt="image" src="https://github.com/user-attachments/assets/a9bfe17c-38ca-49b6-a4f4-3ea22a47102a" />

###  step2: in network section select az's

<img width="1503" height="554" alt="image" src="https://github.com/user-attachments/assets/7e8385f7-fd6d-470f-a737-7a71b285fdaf" />

###  step3: integration with other services(NO)
<img width="1558" height="643" alt="image" src="https://github.com/user-attachments/assets/da57a62e-083b-4198-a00c-0947056271e7" />

###  step4: Configure group size and scaling
<img width="1357" height="676" alt="image" src="https://github.com/user-attachments/assets/2afb1cab-eb39-4f11-9818-6488e1f1d156" />
<img width="1517" height="537" alt="image" src="https://github.com/user-attachments/assets/88bf2dcb-2f6c-43c8-8091-0a9d2073db58" />
<img width="1525" height="483" alt="image" src="https://github.com/user-attachments/assets/f99d0375-3120-46ec-9b83-bedc6930c0a6" />

###  step5: autoscaling group is ready
<img width="1918" height="315" alt="image" src="https://github.com/user-attachments/assets/13f8b639-4e32-4e96-a5ae-5f6825eedbd3" />
<img width="1651" height="210" alt="image" src="https://github.com/user-attachments/assets/d043c9db-6819-4fca-a154-96880e88f508" />


### step6: install stress command on server
````
sudo yum install stress -y
````
<img width="1897" height="612" alt="image" src="https://github.com/user-attachments/assets/beada9c9-35e5-4edd-bc04-0c180fca5f71" />

````
stress
````
- copy command given in example:
````
stress --cpu 10 --io 6 --vm 4  --vm-bytes 128M --timeout 90s &
````
<img width="1286" height="689" alt="image" src="https://github.com/user-attachments/assets/7afc6863-7019-4d32-83b9-e887a795f595" />

### step7: new server created by autoscaling

<img width="1581" height="341" alt="image" src="https://github.com/user-attachments/assets/b7b57bc2-96fe-4917-90dd-43cd0d05f6fe" />

