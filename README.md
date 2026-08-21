\# ☁️ AWS Auto Scaling Web Application



!\[AWS](https://img.shields.io/badge/AWS-Cloud-orange?style=for-the-badge\&logo=amazonaws\&logoColor=white)

!\[Terraform](https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-purple?style=for-the-badge\&logo=terraform\&logoColor=white)

!\[Linux](https://img.shields.io/badge/Linux-Amazon%20Linux-yellow?style=for-the-badge\&logo=linux\&logoColor=black)

!\[EC2](https://img.shields.io/badge/Amazon-EC2-orange?style=for-the-badge\&logo=amazonec2\&logoColor=white)

!\[ALB](https://img.shields.io/badge/AWS-ALB-orange?style=for-the-badge\&logo=amazonaws\&logoColor=white)

!\[Auto Scaling](https://img.shields.io/badge/AWS-Auto%20Scaling-orange?style=for-the-badge\&logo=amazonaws\&logoColor=white)

!\[CloudWatch](https://img.shields.io/badge/AWS-CloudWatch-orange?style=for-the-badge\&logo=amazonaws\&logoColor=white)

!\[VPC](https://img.shields.io/badge/AWS-VPC-orange?style=for-the-badge\&logo=amazonaws\&logoColor=white)

!\[Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge\&logo=git\&logoColor=white)

!\[GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge\&logo=github\&logoColor=white)

!\[PowerShell](https://img.shields.io/badge/PowerShell-5391FE?style=for-the-badge\&logo=powershell\&logoColor=white)



\---



\## 👨‍💻 Author



\### \*\*Jaikrish\*\*



\*\*Junior Cloud Engineer\*\*



Cloud \& DevOps enthusiast focused on:



`AWS` `Terraform` `Linux` `Networking` `Infrastructure Automation`



\---



\## 📌 Project Overview



A production-style \*\*AWS Auto Scaling Web Application\*\* designed and deployed using \*\*Terraform Infrastructure as Code (IaC)\*\*.



The application runs on Amazon EC2 instances using Apache HTTP Server and is exposed to the internet through an \*\*Application Load Balancer (ALB)\*\*.



An \*\*EC2 Auto Scaling Group\*\* manages the application instances and maintains high availability across multiple Availability Zones.



Amazon CloudWatch monitors EC2 CPU utilization and provides high CPU monitoring.



\---



\## 🏗️ Architecture



```text

&#x20;                        🌐 INTERNET

&#x20;                             │

&#x20;                             ▼

&#x20;             ┌─────────────────────────────┐

&#x20;             │   Application Load Balancer │

&#x20;             │          HTTP : 80          │

&#x20;             │       Internet-Facing       │

&#x20;             └──────────────┬──────────────┘

&#x20;                            │

&#x20;                            ▼

&#x20;             ┌─────────────────────────────┐

&#x20;             │         Target Group        │

&#x20;             │           HTTP : 80         │

&#x20;             │      Health Check : 80      │

&#x20;             └──────────────┬──────────────┘

&#x20;                            │

&#x20;                 ┌──────────┴──────────┐

&#x20;                 │                     │

&#x20;                 ▼                     ▼

&#x20;         ┌───────────────┐     ┌───────────────┐

&#x20;         │    EC2 #1     │     │    EC2 #2     │

&#x20;         │ Amazon Linux  │     │ Amazon Linux  │

&#x20;         │    Apache     │     │    Apache     │

&#x20;         │   HTTP : 80   │     │   HTTP : 80   │

&#x20;         └───────┬───────┘     └───────┬───────┘

&#x20;                 │                     │

&#x20;                 └──────────┬──────────┘

&#x20;                            │

&#x20;                            ▼

&#x20;             ┌─────────────────────────────┐

&#x20;             │      Auto Scaling Group     │

&#x20;             │                             │

&#x20;             │ Minimum Capacity : 2        │

&#x20;             │ Desired Capacity : 2        │

&#x20;             │ Maximum Capacity : 4        │

&#x20;             └──────────────┬──────────────┘

&#x20;                            │

&#x20;                            ▼

&#x20;             ┌─────────────────────────────┐

&#x20;             │         CloudWatch          │

&#x20;             │      CPU Utilization        │

&#x20;             │        Threshold : 70%      │

&#x20;             └─────────────────────────────┘

```



\---



\## ☁️ AWS Services



\- \*\*Amazon VPC\*\*

\- \*\*Amazon EC2\*\*

\- \*\*Application Load Balancer\*\*

\- \*\*EC2 Auto Scaling Group\*\*

\- \*\*Target Groups\*\*

\- \*\*Amazon CloudWatch\*\*

\- \*\*NAT Gateway\*\*

\- \*\*Internet Gateway\*\*

\- \*\*Security Groups\*\*

\- \*\*AWS Systems Manager Parameter Store\*\*



\---



\## 🛠️ Tech Stack



\### Cloud



`AWS` `VPC` `EC2` `ALB` `Auto Scaling` `CloudWatch`



\### Infrastructure as Code



`Terraform`



\### Operating System \& Web Server



`Amazon Linux` `Linux` `Apache HTTP Server`



\### DevOps \& Tools



`AWS CLI` `Git` `GitHub` `PowerShell`



\---



\## 🌐 Network Architecture



The infrastructure follows a multi-AZ VPC design.



\### Public Subnets



Used for internet-facing resources such as:



\- Application Load Balancer

\- Internet Gateway connectivity

\- NAT Gateway



\### Private Subnets



Used for application workloads:



\- EC2 instances

\- Auto Scaling Group

\- Apache web servers



\### Internet Gateway



Provides internet connectivity for public subnet resources.



\### NAT Gateway



Provides outbound internet connectivity for resources deployed inside private subnets.



\---



\## ⚖️ Application Load Balancer



The Application Load Balancer distributes incoming HTTP traffic across healthy EC2 instances.



\### Configuration



```text

Name       : aws-auto-scaling-web-app-alb

Scheme     : internet-facing

Type       : application

Protocol   : HTTP

Port       : 80

State      : active

```



\### Target Group



```text

Name       : aws-auto-scaling-web-app-tg

Protocol   : HTTP

Port       : 80

```



\### Health Check



```text

Protocol   : HTTP

Port       : 80

```



Both EC2 instances were successfully registered as healthy targets.



\---



\## 🔄 Auto Scaling Group



The application uses an EC2 Auto Scaling Group to maintain availability.



```text

Auto Scaling Group : aws-auto-scaling-web-app-asg



Minimum Capacity   : 2

Desired Capacity   : 2

Maximum Capacity   : 4

```



The Auto Scaling Group maintains a minimum of two EC2 instances and can scale up to four instances when required.



\---



\## 📊 CloudWatch Monitoring



Amazon CloudWatch monitors EC2 CPU utilization.



\### High CPU Alarm



```text

Alarm Name        : aws-auto-scaling-web-app-high-cpu

Metric            : CPUUtilization

Namespace         : AWS/EC2

Statistic         : Average

Period            : 60 seconds

Evaluation Period : 2

Threshold         : 70%

```



This provides monitoring for high CPU utilization within the Auto Scaling environment.



\---



\## 💻 Web Application



The EC2 instances run an Apache HTTP Server on Amazon Linux.



The application displays:



```text

AWS Auto Scaling Web App



Instance is running successfully!



Managed by Auto Scaling Group + ALB

```



The application was successfully tested through the Application Load Balancer.



\### HTTP Response



```text

HTTP/1.1 200 OK

Server: Apache/2.4.68 (Amazon Linux)

Content-Type: text/html

```



\---



\# 📸 Screenshots



\## 🟢 Target Group — Healthy Instances



Both EC2 instances are successfully registered as healthy targets.



!\[Target Group Healthy Instances](screenshots/target-group-healthy.jpg)



\---



\## 🔄 Auto Scaling Group



The Auto Scaling Group is configured with:



```text

Minimum : 2

Desired : 2

Maximum : 4

```



!\[Auto Scaling Group](screenshots/auto-scaling-group.jpg)



\---



\## 📊 CloudWatch Monitoring



CloudWatch monitors EC2 CPU utilization with a high CPU threshold of 70%.



!\[CloudWatch Monitoring](screenshots/cloudwatch-monitoring.jpg)



\---



\## 🧪 Infrastructure Verification



The deployed infrastructure was verified using AWS CLI.



\### Target Health



```text

Target 1 : healthy

Target 2 : healthy

```



\### Auto Scaling Group



```text

Minimum : 2

Desired : 2

Maximum : 4

```



\### Load Balancer



```text

Scheme : internet-facing

State  : active

Type   : application

```



\### Application Test



```text

HTTP/1.1 200 OK

```



Successful traffic flow:



```text

Internet

&#x20;  ↓

Application Load Balancer

&#x20;  ↓

Target Group

&#x20;  ↓

EC2 Instances

&#x20;  ↓

Apache Web Server

&#x20;  ↓

HTML Response

```



\---



\## 🔐 Security



The project uses AWS Security Groups to control network traffic.



\### ALB Security Group



```text

Protocol : TCP

Port     : 80

Source   : 0.0.0.0/0

```



The internet-facing ALB accepts HTTP traffic from the internet.



\### EC2 Security



EC2 instances are deployed behind the Application Load Balancer and protected using security group rules.



\### Network Security



\- Public subnets for internet-facing resources

\- Private subnets for EC2 workloads

\- NAT Gateway for outbound private subnet connectivity

\- Internet Gateway for public subnet connectivity

\- Security Groups for traffic control



\---



\## 📁 Project Structure



```text

aws-auto-scaling-web-app/

│

├── app/

│   └── index.html

│

├── screenshots/

│   ├── auto-scaling-group.jpg

│   ├── cloudwatch-monitoring.jpg

│   └── target-group-healthy.jpg

│

├── scripts/

│

├── terraform/

│   ├── alb.tf

│   ├── autoscaling.tf

│   ├── cloudwatch.tf

│   ├── launch-template.tf

│   ├── main.tf

│   ├── outputs.tf

│   ├── provider.tf

│   ├── security-groups.tf

│   ├── variables.tf

│   └── .terraform.lock.hcl

│

├── .gitignore

└── README.md

```



\---



\# 🚀 Deployment



\## 1. Clone Repository



```bash

git clone https://github.com/krish12242005/aws-auto-scaling-web-app.git

cd aws-auto-scaling-web-app

```



\## 2. Configure AWS CLI



Configure AWS credentials:



```bash

aws configure

```



Verify the AWS account:



```bash

aws sts get-caller-identity

```



\## 3. Navigate to Terraform



```bash

cd terraform

```



\## 4. Initialize Terraform



```bash

terraform init

```



\## 5. Validate Configuration



```bash

terraform validate

```



\## 6. Review Infrastructure



```bash

terraform plan

```



\## 7. Deploy Infrastructure



```bash

terraform apply

```



Enter:



```text

yes

```



\## 8. Get ALB DNS



```bash

terraform output alb\_dns\_name

```



Open the returned ALB DNS name using HTTP.



\---



\## 🔍 Useful Verification Commands



\### Check Auto Scaling Group



```bash

aws autoscaling describe-auto-scaling-groups \\

&#x20; --auto-scaling-group-names aws-auto-scaling-web-app-asg \\

&#x20; --region ap-south-1

```



\### Check Target Health



```bash

aws elbv2 describe-target-health \\

&#x20; --target-group-arn "<TARGET\_GROUP\_ARN>" \\

&#x20; --region ap-south-1

```



\### Check Load Balancer



```bash

aws elbv2 describe-load-balancers \\

&#x20; --names aws-auto-scaling-web-app-alb \\

&#x20; --region ap-south-1

```



\### Test Application



```bash

curl.exe -I http://<ALB-DNS-NAME>

```



Expected response:



```text

HTTP/1.1 200 OK

```



\---



\## 🧹 Cleanup



To remove the AWS infrastructure created by Terraform:



```bash

cd terraform

terraform destroy

```



Enter:



```text

yes

```



> ⚠️ \*\*Warning:\*\* `terraform destroy` removes the AWS resources managed by this Terraform project.



\---



\# 🎯 Key Learning Outcomes



Through this project, I gained hands-on experience with:



\- AWS VPC architecture

\- Public and private subnet design

\- Multi-AZ networking

\- Internet Gateway

\- NAT Gateway

\- Security Groups

\- EC2 provisioning

\- Launch Templates

\- Application Load Balancer

\- Target Groups

\- EC2 Auto Scaling

\- CloudWatch monitoring

\- Terraform Infrastructure as Code

\- AWS CLI

\- Linux administration

\- Apache web server

\- Git and GitHub

\- AWS infrastructure troubleshooting



\---



\# 📌 Project Highlights



\- ✅ Infrastructure as Code using Terraform

\- ✅ Highly available EC2 architecture

\- ✅ Application Load Balancer

\- ✅ Auto Scaling Group

\- ✅ Multi-AZ deployment

\- ✅ Two healthy EC2 instances

\- ✅ Target Group health checks

\- ✅ CloudWatch CPU monitoring

\- ✅ Linux + Apache web server

\- ✅ AWS CLI verification

\- ✅ Private subnet architecture

\- ✅ NAT Gateway

\- ✅ GitHub version control



\---



\# 👨‍💻 About the Author



\## \*\*Jaikrish\*\*



\*\*Junior Cloud Engineer\*\*



Cloud \& DevOps enthusiast interested in building and managing reliable cloud infrastructure using AWS, Terraform, Linux, Networking, and DevOps technologies.



\### Core Skills



`AWS` `Terraform` `Linux` `Networking` `EC2` `VPC` `ALB` `Auto Scaling` `CloudWatch` `Git` `GitHub`



\---



\## ⭐ Project Repository



\*\*GitHub Repository:\*\*



https://github.com/krish12242005/aws-auto-scaling-web-app



If you found this project useful, consider giving the repository a ⭐.



\---



<p align="center">

&#x20; <b>Built with ☁️ AWS + 🏗️ Terraform + 🐧 Linux + 🚀 DevOps</b>

</p>

