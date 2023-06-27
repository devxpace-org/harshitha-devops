pipeline {
    agent any
   
    stages {
        stage('Build and Deploy') {
            steps {

                
                sh 'docker build -t harshitha1503/hiworld:6.0 .'
                sh 'docker push harshitha1503/hiworld:6.0'
        }      
        }
        
    }
}
