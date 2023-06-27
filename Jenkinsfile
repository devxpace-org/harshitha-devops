 pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                sh 'docker build -t harshitha1503/nicejob:1.0 .'
                sh 'docker push harshitha1503/nicejob:1.0'
        }      
        }   
    }
}
