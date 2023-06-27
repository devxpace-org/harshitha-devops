pipeline {
    agent any
   
    stages {
        stage('Build and Deploy') {
            steps {

                
                sh 'sudo docker build -t harshitha1503/hiworld:1.0 .'
		              sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'docker push harshitha1503/hiworld:1.0'
        }      
        }
        
    }
}
