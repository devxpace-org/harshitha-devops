pipeline {
    agent any
   
    stages {
        stage('Build and Deploy') {
            steps { 
                sh 'sudo docker build -t harshitha1503/hiworld::4.0 .'
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'  
                sh 'sudo docker push harshitha1503/hiworld:4.0'
               
        }      
        }
        
    }
}
