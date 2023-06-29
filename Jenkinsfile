pipeline {
    agent any
    environment{
        DOCKERHUB_CREDENTIALS = credentials('docker')
    }
   
    stages {
        stage('Build and Deploy') {
            steps { 
                sh 'docker build -t harshitha1503/harshitha:harshitha .'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'  
                sh 'docker push harshitha1503/harshitha:harshitha'
               
        }      
        }
        
    }
}
