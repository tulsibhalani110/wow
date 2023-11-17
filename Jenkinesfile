pipeline {
    agent any
    
    stages {
        stage('Build Docker') {
            steps {
                script {
                  checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/tulsibhalani110/wow.git']])
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
