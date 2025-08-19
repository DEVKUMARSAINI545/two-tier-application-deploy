#!/bin/bash
update_system(){
        sudo apt update -y
}
install_requirements(){
        sudo apt install -y docker.io
        sudo systemctl start docker
        sudo systemctl enable docker
        sudo systemctl restart docker
}

group_added(){
        sudo usermod -aG docker ubuntu
        newgrp docker
}

start_file()
{
 sudo curl -SL https://github.com/docker/compose/releases/download/v2.28.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo mkdir -p /home/ubuntu/myapp
cd /home/ubuntu/myapp

sudo docker-compose up -d
}



update_system
install_requirements
group_added
start_file