pipeline {
    agent any

    stages {
        stage('Pull from GitHub') {
            steps {
                git changelog: false, poll: false, url: 'https://github.com/abhi15patil/containerize_flask_webapp.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker stop flask-container || true'
            }
        }

        stage('Remove Old Container') {
            steps {
                sh 'docker rm flask-container || true'
            }
        }

        stage('Deploy New Container') {
            steps {
                sh 'docker run -d -p 5000:5000 --name flask-container flask-app'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withDockerRegistry(credentialsId: '6fddd431-667a-407b-9346-440999ba75fe', url: 'https://index.docker.io/v1/') {
                    sh 'docker tag flask-app:latest abhishek9284/flask-app:latest'
                    sh 'docker push abhishek9284/flask-app:latest'
                }
            }
        }
    }
}
