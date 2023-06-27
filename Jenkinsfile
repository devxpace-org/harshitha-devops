 pipeline {
    agent any
    environment{
        DOCKERHUBCREDS = credentials('docker')
    }
  

    stages {
        stage('Build and Deploy') {
            steps {
                sh 'docker build -t harshitha1503/hiworld:4.0 .'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push harshitha1503/hiworld:4.0'
        }      
        }   
    }
}
