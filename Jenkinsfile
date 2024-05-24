pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS = 'dockerhub'
        DOCKER_IMAGE = 'aminemazza/mon-portfolio'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/AmineMazza/portfolio.git'
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${env.BUILD_ID}")
                }
            }
        }
        stage('Push Docker image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', "${DOCKER_CREDENTIALS}") {
                        docker.image("${DOCKER_IMAGE}:${env.BUILD_ID}").push()
                    }
                }
            }
        }
    }
}
