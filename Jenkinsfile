@Library("Shared") _
pipeline {
    agent any

    stages {
       
        stage('Clone Website') {
            steps {
                script{   
                clone ('https://github.com/DEVKUMARSAINI545/two-tier-application-deploy.git', "main")
                }
            }
        }
         stage('hello'){
            steps {
                echo 'Hello My Two tier application is now worked..... #bycoot aks'
            }
        }
        
          stage('Terraform Apply') {
            steps {
                script{   
                terraform()
            }
                }
            }
        }
    }
}
