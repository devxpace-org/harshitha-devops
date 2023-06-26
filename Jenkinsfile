pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/devxpace-org/harshitha-devops'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = docker.build('harshitha1503/harshi_docker1', '-f Dockerfile .')
                    withCredentials([string(credentialsId: '5518c95f-7915-4417-ad10-191c5cd6e998', variable: 'DOCKERHUB_CREDENTIALS')]) {
                        docker.withRegistry('https://hub.docker.com/repositories/harshitha1503', 'docker') {
                            dockerImage.push()

                    docker.withRegistry('https://hub.docker.com/repositories/harshitha1503', '5518c95f-7915-4417-ad10-191c5cd6e998') {
                        dockerImage.push()
                    }
                }
            }
        }
    }
}
