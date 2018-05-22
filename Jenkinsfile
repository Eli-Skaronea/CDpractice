pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out project repo...'
            }
        }
        stage('Build jar') {
            steps {
                echo 'Building jar file...'
            }
        }
        stage('Build docker image') {
            steps {
                echo 'Building docker image...'
            }
        }
        stage('Push docker image') {
            steps {
                echo 'Pushing docker image to docker hub...'
            }
        }
        stage('Run container'){
            steps{
                echo 'Running application in container'
            }
        }
    }
}