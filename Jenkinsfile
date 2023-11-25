
pipeline {
    agent any
    stages {
        stage("Build Docker Image") {
            environment {
                HOME = "${env.WORKSPACE}"
            }
            steps {
                script {
                    docker.build("<alpine>:${env.alpine}")
                }
            }
        }
    }
}
