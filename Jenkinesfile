pipeline {
    agent any
    
    stages {
        stage('Build Docker') {
            steps {
                script {
                    docker.image('ho').inside {
                        docker.build('ho:latest', '-f Dockerfile.build .')
                    }
                }
            }
        }
    }
    
    post {
        success {
            echo 'Build successful! You can now deploy your Docker image.'
        }
        failure {
            echo 'Build failed. Check the logs for errors.'
        }
    }
}
