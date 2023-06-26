pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                sh '''sudo docker build -t test .
                      sudo docker tag test harshitha1503/harshi_docker1
                      sh 'sudo chmod 666 /var/run/docker.sock'
                      sudo docker push harshitha1503/harshi_docker1:2.0
                '''          
            }
        }
    }
}
