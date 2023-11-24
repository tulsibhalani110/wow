pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps{
                script {
                    docker ps
                   git 'https://github.com/tulsibhalani110/myappsample.git'
                    docker.build('your-image-name')
                }
            }
        }
    }
    
    post {
        success {
            echo 'Docker build successful!'
        }

        failure {
            echo 'Docker build failed!'
        }
    }
}
