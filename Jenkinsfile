pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                sh '''sudo docker build -t images:2.0 .
                      sudo docker tag images:2.0  harshitha1503/harshi_docker1:latest
                      sudo docker push harshitha1503/harshi_docker1
                '''          
            }
         }
       stage ('Starting downstream job ') {
           steps {
               build job: 'first-job'
           }      
        }
    }
}
