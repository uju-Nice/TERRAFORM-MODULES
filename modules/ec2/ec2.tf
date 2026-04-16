resource "aws_instance" "nickos-ec2" {
    ami = "ami-123456"
    instance_type = "t2.micro"
    
     user_data = <<-EOF
              #!/bin/bash
              yum update -y
              sudo dnf install -y mariadb105
              echo "MySQL client installed successfully!" > /home/ec2-user/mysql-installed.log
            EOF

      tags = {
            Name = "nickos-ec2-instance"     
}
}

resource "aws_security_group" "nickos-ssh" {
    name = "allow_ssh"
    description = "Allow SSH inbound traffic/or from a trusted IP"
    vpc_id = var.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.security_group
    }

     egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var_ecurity_group
  }

    tags = {
        Name = "allow_ssh"
    }

}