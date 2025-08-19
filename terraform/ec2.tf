resource "aws_key_pair" "mykey" {
    key_name = "terra-key-gen"
    public_key = file("terra-key-gen.pub")
  
}

resource "aws_default_vpc" "vpc" {
    tags = {
      Name ="Default VPC"
    }
  
}

resource "aws_security_group" "mysg" {
    name = "dev-web-sg"
    description = "Allow http and ssh"
    vpc_id = aws_default_vpc.vpc.id

    ingress {
        to_port = 22
        from_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        to_port = 5000
        from_port = 5000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    } 
    egress {
        to_port = 0
        from_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}


resource "aws_instance" "flask-app" {
    key_name = aws_key_pair.mykey.key_name
    instance_type = "t2.micro"
    ami = "ami-0f918f7e67a3323f0"
    security_groups = [aws_security_group.mysg.name]
  user_data = file("./scripts/install.sh")
    root_block_device {
      volume_size = 8
      volume_type = "gp3"
    }

    tags={
        Name="flask-app"

    }
}

 