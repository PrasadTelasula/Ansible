node1 ansible_ssh_host=${centos_node_private_address} ansible_ssh_user=centos ansible_ssh_port=22 ansible_ssh_private_key_file=/home/centos/centosLaunchKey

node2 ansible_ssh_host=${ubuntu_node_private_address} ansible_ssh_user=ubuntu ansible_ssh_port=22 ansible_ssh_private_key_file=/home/centos/ubuntuLaunchKey

node3 ansible_host=${windows_node_private_address} ansible_user=Administrator ansible_password= ansible_connection=winrm ansible_port=5985 ansbible_winrm_server_cert_validation=ignore 


[centos_servers]
node1

[ubuntu_servers]
node2

[windows_servers]
node3