# Ansible servers provisioning with Terraform

![Alt text](https://github.com/PrasadTelasula/Ansible/blob/master/arch_diag/arch_diag.png?raw=true "Architecture")

# Clone this repository

````
git clone https://github.com/PrasadTelasula/Ansible.git
````


# Generate SSH Keys.

````
mkdir -p /home/centos/keys
````
````
cd /home/centos/keys
````

| Node Name | Command                    |
| ------------- | ------------------------------ |
| `ACS`      | ssh-keygen -t rsa -f acsLaunchKey      |
| `CentosNode`   | ssh-keygen -t rsa -f centosLaunchKey     |
| `UbuntNode`   | ssh-keygen -t rsa -f ubuntuLaunchKey     |
| `WindowsNode`   | ssh-keygen -t rsa -f windowsLaunchKey    |


# To Convert Openssh key to RSA Key
````
ssh-keygen -p -m PEM -f windowsLaunchKey
````

# Export AWS accesskey and secretkey

> Create an **IAM** user with **Programtic Access** and attach **EC2FullAdmin** policy.

````
export AWS_ACCESS_KEY_ID=XXXXXXXXXXXXXXX
````
````
export AWS_SECRET_ACCESS_KEY=XXXXXXXXXXX
````


# Terraform

````
terraform init
````
````
terraform validate
````
````
terraform plan -out tfplan
````

````
terraform apply "tfplan"
````
````
terraform destroy
````

# update the Private IP's in host_vars folder
> Linux example 

````
---
ansible_ssh_host: 192.168.1.1
````

> windows example

````
---
ansible_host: 192.168.1.2
````

# Test the connectivity using nc 
> Linux example

````
nc -zv 192.168.1.1 22
````
> windows example

````
nc -zv 192.168.1.2 5985
````


# Finally ping the servers using ansible
> Linux example

````
ansible centos -m ping
````
> windows example

````
ansible windows -m win_ping
````
