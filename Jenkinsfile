pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {

                
                sh 'sudo docker build -t harshitha1503/harshitha:praneeth-1 .'
		sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'sudo docker push harshitha1503/harshitha:praneeth-1'
        }      
        }
        
    }
}
