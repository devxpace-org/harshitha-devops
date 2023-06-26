pipeline {
    agent any

    stages {
        stage('Build and Deploy') {
            steps {
                sh '''sudo docker build -t image1 .
                      sudo docker tag image1 harshitha1503/harshi_docker1
                      sudo docker push harshitha1503/harshi_docker1:3.0
                '''          
            }
        }
    }
}
}
       stage ('Starting downstream job ') {
           steps {
               build job: 'first-job'
           }      
        }
    }
}
