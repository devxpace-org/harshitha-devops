 pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                sh 'sudo docker build -t harshitha1503/nicejob:1.0 .'
                sh 'sudo docker push harshitha1503/nicejob:1.0'
        }      
        }   
    }
}
