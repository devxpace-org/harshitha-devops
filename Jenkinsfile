pipeline {
    agent any
    environment {
		DOCKERHUB_CREDENTIALS=credentials('Docker')
	}

    stages {
        stage('Build and Deploy') {
            steps {

                
                sh 'sudo docker build -t harshitha1503/harshitha:harshitha .'
		sh 'sudo chmod 666 /var/run/docker.sock'
                sh 'docker push harshitha1503/harshitha:harshitha'
        }      
        }
        
    }
}
