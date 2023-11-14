provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
ami = "ami-0a6ed6689998f32a5"
instance_type = "t2.micro"
key_name = "suneel_AWS_Key"
availability_zone = "ap-south-1a"
user_data	= <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "Hi this is my means suneel website" > /var/www/html/index.html
EOF
tags = {
Name = "Linux machine1"
}
}


resource "aws_instance" "two" {
ami = "ami-0a6ed6689998f32a5"
instance_type = "t2.micro"
key_name = "suneel_AWS_Key"
availability_zone = "ap-south-1b"
user_data       = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "Hi this is my means suneel website" > /var/www/html/index.html
EOF
tags = {
Name = "Linux machine2"
}
}

