data "template_file" "inventory" {
        template = "${file("inventory.tpl")}"
        vars = {
            centos_node_private_address = "${aws_instance.Centos-Node.private_ip}",
            ubuntu_node_private_address = "${aws_instance.Ubuntu-Node.private_ip}",
            windows_node_private_address = "${aws_instance.Windows-Node.private_ip}",
            #windows_password = "${rsadecrypt(aws_instance.Windows-Node.password_data, file(var.WINDOWS_PRIV_KEY))}"

        }
}
