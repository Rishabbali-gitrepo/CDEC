
------------------------------
## 📌 Table of Contents

   1. What is Amazon EC2 and its components?
   2. EC2 Pricing Models
   3. Security Groups vs. Network ACLs (NACLs)
   4. Ensuring High Availability
   5. EC2 Security Best Practices

------------------------------
## 1. What is Amazon EC2 and its components?
Amazon EC2 is an Infrastructure as a Service (IaaS) offering that provides resizable, secure, and virtual compute capacity in the AWS Cloud.

* Instances: The virtual machines you provision.
* AMIs (Amazon Machine Images): Pre-configured OS templates used to launch instances.
* EBS (Elastic Block Storage): Persistent block storage volumes.
* Security Groups: Instance-level firewalls.
* Key Pairs: Secure login credentials (SSH/RDP).

------------------------------
## 2. EC2 Pricing Models
AWS offers several models to optimize your compute costs:

* On-Demand: Pay by the second/hour. Best for short-term, unpredictable workloads.
* Savings Plans / Reserved Instances: Commit to 1-3 years for up to 72% discount. Best for steady-state usage.
* Spot Instances: Spare AWS capacity available at up to 90% discount. Best for fault-tolerant, batch, or stateless tasks.
* Dedicated Hosts: Physical servers dedicated strictly to you. Used for strict compliance or existing software licenses.

------------------------------
## 3. Security Groups vs. Network ACLs (NACLs)
Security in your Virtual Private Cloud (VPC) operates at two main layers:

| Feature | Security Groups | Network ACLs (NACLs) |
|---|---|---|
| Scope | Instance level | Subnet level |
| Traffic Rules | Supports Allow rules only | Supports both Allow and Deny rules |
| Statefulness | Stateful (Inbound traffic is automatically allowed outbound) | Stateless (Outbound traffic must be explicitly allowed) |
| Evaluation | All rules are evaluated before traffic is filtered | Rules are evaluated in number order |

------------------------------
## 4. Ensuring High Availability
To prevent downtime and design a fault-tolerant architecture:

* Auto Scaling Groups (ASG): Automatically adds or removes instances based on CPU usage and replaces unhealthy instances.
* Elastic Load Balancing (ELB): Distributes incoming traffic across healthy instances across different Availability Zones (AZs).
* Multi-AZ Deployment: Never run your application in a single AZ; distribute instances to survive data center failures.

------------------------------
## 5. EC2 Security Best Practices
Follow the principle of least privilege and proactive monitoring:

* Restrict Network Access: Limit SSH/RDP access to specific source IP ranges using Security Groups.
* IAM Roles: Attach IAM roles to instances for AWS service permissions instead of hardcoding API keys.
* Regular Patching: Keep operating systems up to date with AWS Systems Manager Patch Manager.
* Monitoring: Use Amazon CloudWatch to track metrics and AWS Config to track configuration changes.

------------------------------


