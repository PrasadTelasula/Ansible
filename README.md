# Ansible
Clone this repository

git clone https://github.com/PrasadTelasula/Ansible.git

mkdir keys

cd keys

ssh-keygen -t rsa -f acsLaunchKey

ssh-keygen -t rsa -f centosLaunchKey

ssh-keygen -t rsa -f ubuntuLaunchKey

ssh-keygen -t rsa -f windowsLaunchKey

# To Convert Openssh key to RSA Key
ssh-keygen -p -m PEM -f windowsLaunchKey

# Export AWS accesskey and secretkey
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=

# Terraform
terraform init

terraform validate

terraform plan -out tfplan

terraform apply "tfplan"

terraform destroy
