pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('harshitha1503/harshi_docker1', '-f Dockerfile .')
                    docker.withRegistry('https://hub.docker.com/u/harshitha1503', 'fc488861-52a9-496f-8c2e-000770a6de7e') {
                        dockerImage.push()

    stages {
        stage('Build and Deploy') {
            steps {
                sh '''sudo docker build -t image1:1.0.
                      sudo docker tag image1:1.0 harshitha1503/harshi_docker1:latest
                      sudo docker push harshitha1503/harshi_docker1
                '''          
            }
        }
    }
}
