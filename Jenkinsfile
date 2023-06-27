 pipeline {
    agent any
    environment{
        DOCKERHUBCREDS = credentials('dockerhub')
    }
  

    stages {
        stage('Build and Deploy') {
            steps {
                sh 'docker build -t harshitha1503/hiworld:4.0 .'
                sh 'docker push harshitha1503/hiworld:4.0'
        }      
        }   
    }
}
