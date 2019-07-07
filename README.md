# Ansible servers provisioning with Terraform

![Alt text](https://github.com/PrasadTelasula/Ansible/blob/master/arch_diag/arch_diag.png?raw=true "Architecture")

Clone this repository

````
git clone https://github.com/PrasadTelasula/Ansible.git
````

````
mkdir keys
````
````
cd keys
````

# Generate SSH Keys.

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
