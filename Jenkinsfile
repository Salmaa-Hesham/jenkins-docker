pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'master', url: 'https://github.com/Salmaa-Hesham/jenkins-docker.git'
            }
        }

        stage('Build Docker Images') {
            steps {
                sh 'whoami'
                sh '/usr/local/bin/docker-compose build'
            }
        }

        stage('Start Services') {
            steps {
                sh 'docker-compose up -d'
            }
        }

        stage('Verify Running Containers') {
            steps {
                sh 'docker ps'
            }
        }
    }
}
