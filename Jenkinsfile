pipeline {
    agent any
    environment {
        DEBUG = 'true'
    }
    stages {
        stage('Debug Info') {
            steps {
                sh '''
                echo "Current User: $(whoami)"
                echo "Home Directory: $HOME"
                echo "Current Directory: $(pwd)"
                echo "Jenkins Workspace: $WORKSPACE"
                echo "User ID: $(id)"
                echo "Groups: $(groups)"
                echo "PATH: $PATH"
                echo "Docker Version:"
                docker --version || echo "Docker not found"
                echo "Docker Compose Version:"
                docker-compose --version || echo "Docker Compose not found"
                '''
            }
        }

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
