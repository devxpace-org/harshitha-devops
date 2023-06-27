 pipeline {
    agent any
    environment{
     DOCKERHUBCREDS = credentials('dockerhub')}
  

    stages {
        stage('Build and Deploy') {
            steps {
                sh 'docker build -t harshitha1503/nicejob:1.0 .'
                sh 'echo $DOCKERHUBCREDS_PSW | docker login -u $DOCKERHUBCREDS_USR --password-stdin'
             
                sh 'docker push harshitha1503/nicejob:1.0'
        }      
        }   
    }
}
