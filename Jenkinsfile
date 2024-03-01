pipeline {
    agent any 
    stages {
      
        stage("clone code") {
            steps {
                script {
                    // Let's clone the source
                    git branch: 'main', credentialsId: 'github', url: 'https://github.com/vinayprakash893/docker-ec2-jenkins.git'
                }
            }
        }
        stage("build") {
            steps { 
                sh "sudo docker build -t flask . "
            }
        }
        
        stage("deploy") {
          steps{
            sh "sudo docker-compose down && sudo docker-compose up -d "
          }
        }
      
    }
}

    


