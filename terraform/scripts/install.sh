#!/bin/bash

set -e 

update_system(){
        echo "System is updating..."
        sudo apt update -y

}

install_requirements(){
        echo "Installing requirements"
        sudo apt install -y docker.io curl
         sudo systemctl enable docker
    sudo systemctl restart docker
    sudo curl -SL https://github.com/docker/compose/releases/download/v2.28.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
}
group_added(){
    echo "Adding user to Docker group..."
    sudo usermod -aG docker $USER
    newgrp docker
}

clone_project(){

       REPO="two-tier-application-deploy"
       if [  -d  "$REPO" ]; then
       echo "Repo '$REPO' already exist . Skipping clone"
       else 
        echo "Cloning...."
        git clone  https://github.com/DEVKUMARSAINI545/two-tier-application-deploy.git
fi
}

start_application(){

     APP_DIR="two-tier-application-deploy/two-tier-flask-app"
     if [ ! -d "$APP_DIR" ]; then
       echo "App folder not found: $APP_DIR"
        exit 1
fi
           echo "Starting Docker Compose in $APP_DIR..."
           (cd "$APP_DIR" && docker-compose up -d)

}


update_system
install_requirements
group_added
clone_project
start_application